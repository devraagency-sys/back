const { PrismaClient } = require("./generated/prisma");

const prisma = new PrismaClient();

async function main() {
  await prisma.case.createMany({
    data: [
      {
        title_ua: "Boinkers",
        title_ru: "Boinkers",
        title_en: "Boinkers",
        budget_ua: "Бюджет: 50,000$",
        budget_ru: "Бюджет: 50,000$",
        budget_en: "Budget: $50,000",
        users_ua: "Нові користувачі: 571,722",
        users_ru: "Новые пользователи: 571,722",
        users_en: "New users: 571,722",
        geo_ua: "ГЕО: Всі країни",
        geo_ru: "ГЕО: Все страны",
        geo_en: "GEO: All countries",
        cpi_ua: "CPI: $0.087",
        cpi_ru: "CPI: $0.087",
        cpi_en: "CPI: $0.087",
        img: "/photo_2025-07-28_22-58-58.jpg",
      },
    ],
  });
  

  console.log("✅ Кейси додані");
}

main()
  .catch(e => console.error(e))
  .finally(() => prisma.$disconnect());
