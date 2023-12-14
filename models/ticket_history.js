module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "ticket_history",
      {
        ticket_history_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        ticket_attachment_id: DataTypes.INTEGER,
        ticket_master_pk: DataTypes.INTEGER,
        reason: DataTypes.STRING,
        status_id: DataTypes.INTEGER,
        createdby: DataTypes.INTEGER,
      },
  
      {
        tableName: "ticket_history",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };