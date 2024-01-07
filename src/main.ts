import { PrismaClient } from '@prisma/client';
//import { env } from '.';
// import { middlewares } from './middlewares/middleware';
const prisma = new PrismaClient({
    log: [{ level: 'query', emit: 'event' }],
});

prisma.$on('query', () => {
    // if (env.env === 'development') {
    //     // console.log(Query: ${e.query});
    //     // console.log(Duration of SQL sub-query: ${e.duration})
    // }
});

// const f1 = async () => {
//     console.log('harskh');
//     await prisma.paytm.update({
//         where : {
//             PAYTM_ID:2,
//         },
//         data:{
//             ACCOUNT_HOLDER_NAME:"XYZ",
//         }
//     })
// }
// f1()


export { prisma };