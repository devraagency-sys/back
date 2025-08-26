const { PrismaClient } = require("./generated/prisma");

const prisma = new PrismaClient();

async function main() {
  await prisma.case.createMany({
    data: [
      {
        title: "Boinkers",
        budget: "Бюджет: 50,000$",
        users: "Нові користувачі: 571,722",
        geo: "ГЕО: Всі країни",
        cpi: "CPI: $0.087",
        img: "/photo_2025-07-28_22-58-58.jpg",
      },
      {
        title: "Uni Jump",
        budget: "Бюджет: 30,000$",
        users: "Нові користувачі: 227,812",
        geo: "ГЕО: Країни СНД",
        cpi: "CPI: $0.13",
        img: "/photo_2025-07-28_22-58-59.jpg",
      },
      {
        title: "PokerGram",
        budget: "Бюджет: 20,000$",
        users: "Нові користувачі: 180,000",
        geo: "ГЕО: Змішані регіони",
        cpi: "CPI: $0.11",
        img: "/photo_2025-07-28_22-59-00.jpg",
      },
    ],
  });

  console.log("✅ Кейси додані");
}

main()
  .catch(e => console.error(e))
  .finally(() => prisma.$disconnect());
