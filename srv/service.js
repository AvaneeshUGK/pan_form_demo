const cds = require('@sap/cds');
module.exports = cds.service.impl(async function () {
    let {
        attachments,
    } = this.entities;

    this.before('READ', attachments, async (req) => {debugger
        try {
            // req.params.id[0];
            const a =await SELECT.from(attachments);
            var first = a;
            let data = [];
            // a.forEach(element => {
            //     if()
            // });
            console.log("hey!");
        } catch (error) {
            
        }

    });

});