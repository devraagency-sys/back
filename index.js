require('dotenv').config();

const express = require('express');
const cors = require('cors');
const app = express();
const { PrismaClient } = require('./generated/prisma'); // Шлях має збігатися з output у schema


const prisma = new PrismaClient();
const port = process.env.PORT || 3002;

app.use(express.json());
app.use(cors());

app.post('/form', async (req, res) => {
  try {
    const { name, contact, method, theme, message } = req.body;

    if (!name || !contact || !method || !theme || !message) {
      return res.status(400).json({ error: 'Всі поля є обовʼязковими.' });
    }

    const form = await prisma.form.create({
      data: {
        name,
        contact,
        method,
        theme,
        message,
      },
    });

    return res.status(200).json({ success: true, data: form });
  } catch (error) {
    console.error('❌ Помилка при збереженні форми:', error);
    return res.status(500).json({ error: 'Помилка сервера' });
  }
});

app.get('/form', async (req, res) => {
  return 'hello'
});

app.get('/reviews', async (req, res) => {
  try {
    const reviews = await prisma.review.findMany({ orderBy: { createdAt: 'desc' } });
    res.json(reviews);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Помилка сервера' });
  }
});

app.get('/partners', async (req, res) => {
  try {
    const partners = await prisma.partners.findMany();
    res.json(partners);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Помилка сервера' });
  }
});

app.get('/cases', async (req, res) => {
  try {
    const cases = await prisma.case.findMany({
      orderBy: { id: 'asc' },
    });
    res.json(cases);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Помилка сервера' });
  }
});
app.get('/team', async (req, res) => {
  try {
    const team = await prisma.teamMember.findMany({ orderBy: { id: 'asc' } });
    res.json(team);
  } catch (error) {
    console.error("❌ Помилка при отриманні команди:", error);
    res.status(500).json({ error: 'Помилка сервера' });
  }
});


app.listen(port, () => {
  console.log(`🚀 Сервер запущено на порту ${port}`);
});
