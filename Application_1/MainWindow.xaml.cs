using System;
using System.Net;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Newtonsoft.Json;

namespace Application_1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void SearchButtonClick(object sender, RoutedEventArgs e)
        {
            if (searchBar.Text != null)
            {
                string searchQuery = QueryConstructor(searchBar.Text);
                if (pixabayRadio.IsChecked == true)
                {
                    PixabaySearch(searchQuery);
                }
                else
                {
                    MessageBox.Show("Error: No API selected.");
                }
            }
        }

        private string QueryConstructor(string searchText)
        {
            string query = "";
            for (int i = 0; i < searchText.Length; i++)
            {
                if (!Char.IsWhiteSpace(searchText[i]))
                {
                    query += searchText[i];
                }
                else if (Char.IsWhiteSpace(searchText[i]))
                {
                    query += "+";
                }
            }
            return query;
        }

        private void PixabaySearch(string searchQuery)
        {
            using (WebClient wc = new WebClient())
            {
                string url = $"https://pixabay.com/api/?key=14096536-1eb1e38e2b743dd525bce59a4&q={searchQuery}";
                string json = wc.DownloadString(url);

                RootObject rootObject = new RootObject();
                rootObject = JsonConvert.DeserializeObject<RootObject>(json);
                imageDisplay.ItemsSource = rootObject.hits;
            }
        }
    }

    public class Hits
    {
        public string webformatURL { get; set; }
    }

    public class RootObject
    {
        public List<Hits> hits { get; set;  }
    }
}
