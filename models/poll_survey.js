module.exports = (sequelize, DataTypes) => {
    return sequelize.define(
      "poll_survey",
      {
        poll_survey_pk: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
        },
        volunteer_id: DataTypes.INTEGER,
        voter_pk: DataTypes.INTEGER,
        intrested_party: DataTypes.INTEGER,
        voted_party: DataTypes.INTEGER,
        phone_no: DataTypes.STRING,
        residential: DataTypes.BOOLEAN,
        current_address: DataTypes.STRING,
        permenent_address: DataTypes.STRING,
        religion_id: DataTypes.INTEGER,
        caste_id: DataTypes.INTEGER,
        disability: DataTypes.BOOLEAN,
        govt_employee: DataTypes.BOOLEAN,
        party_id: DataTypes.INTEGER,
      },
  
      {
        tableName: "poll_survey",
        engine: "InnoDB",
        timestamps: false,
      }
    );
  };