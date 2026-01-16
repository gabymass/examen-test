const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('<h1>Hello World !</h1><p>L\'API de l\'examen fonctionne parfaitement sur Docker et AWS.</p>');
});

app.listen(port, () => {
  console.log(`Serveur en écoute sur le port ${port}`);
});
