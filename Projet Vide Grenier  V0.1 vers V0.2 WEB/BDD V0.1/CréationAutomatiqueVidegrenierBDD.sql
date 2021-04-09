/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  19/11/2019 14:34:44                      */
/*==============================================================*/


drop table if exists ATTESTATIONHONNEUR;

drop table if exists EXPOSANT;

drop table if exists HORODATAGE;

drop table if exists RESERVATION;

drop table if exists ROLE;

drop table if exists UTILISATEUR;

drop table if exists VIDEGRENIER;

/*==============================================================*/
/* Table : ATTESTATIONHONNEUR                                   */
/*==============================================================*/
create table ATTESTATIONHONNEUR
(
   ID_AH                int not null,
   ID_HOROD             int not null,
   DATENAIS_AH          date not null,
   DEPTNAIS_AH          numeric(8,0) not null,
   VILLENAIS_AH         text not null,
   NUMCNI_AH            numeric(8,0) not null,
   DATEDELIVRCNI_AH     date not null,
   EMETCNI_AH           text not null,
   NUMPLAQIMM_AH        text,
   primary key (ID_AH)
);

/*==============================================================*/
/* Table : EXPOSANT                                             */
/*==============================================================*/
create table EXPOSANT
(
   ID_EXP               int not null,
   ID_RES               int not null,
   ID_AH                int not null,
   ID_UTIL              int not null,
   NOM_EXP              text not null,
   PRENOM_EXP           text not null,
   ADR_EXP              text not null,
   CP_EXP               numeric(8,0) not null,
   VILLE_EXP            text not null,
   TEL_EXP              numeric(8,0) not null,
   EMAIL_EXP            text not null,
   COMMENT_EXP          text,
   primary key (ID_EXP)
);

/*==============================================================*/
/* Table : HORODATAGE                                           */
/*==============================================================*/
create table HORODATAGE
(
   ID_HOROD             int not null,
   IP_HOROD             text not null,
   DATE_HOROD           date not null,
   HEURE_HOROD          time not null,
   primary key (ID_HOROD)
);

/*==============================================================*/
/* Table : RESERVATION                                          */
/*==============================================================*/
create table RESERVATION
(
   ID_RES               int not null,
   ID_VG                int not null,
   NBREEMPLRESERVE_RES  numeric(8,0) not null,
   TYPEPAIEMENT_RES     text not null,
   STATUTRESERVATION_RES text not null,
   NUMEMPLATTRIBUE_RES  numeric(8,0) not null,
   primary key (ID_RES)
);

/*==============================================================*/
/* Table : ROLE                                                 */
/*==============================================================*/
create table ROLE
(
   ID_ROL               int not null,
   ADMIN_ROL            text not null,
   MEMB_ROL             text not null,
   VISIT_ROL            text not null,
   primary key (ID_ROL)
);

/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
create table UTILISATEUR
(
   ID_UTIL              int not null,
   ID_ROL               int not null,
   NOM_UTIL             text not null,
   MDP_UTIL             text not null,
   EMAIL_UTIL           text not null,
   TEL_UTIL             numeric(8,0),
   primary key (ID_UTIL)
);

/*==============================================================*/
/* Table : VIDEGRENIER                                          */
/*==============================================================*/
create table VIDEGRENIER
(
   ID_VG                int not null,
   DATE_VG              date not null,
   PRIXEMPL_VG          float(8,2) not null,
   NBREEMPLINIT_VG      numeric(8,0) not null,
   NBREEMPLINDISPO_VG   numeric(8,0) not null,
   NOMBRE_D_EMPLACEMENTS_RESTANTS_TEMPORAIRES_ numeric(8,0) not null,
   NBREEMPLRESTREEL_VG  numeric(8,0) not null,
   NBREPARTICIP_VG      numeric(8,0) not null,
   primary key (ID_VG)
);

alter table ATTESTATIONHONNEUR add constraint FK_IMPLIQUER foreign key (ID_HOROD)
      references HORODATAGE (ID_HOROD) on delete restrict on update restrict;

alter table EXPOSANT add constraint FK_DEVENIR foreign key (ID_UTIL)
      references UTILISATEUR (ID_UTIL) on delete restrict on update restrict;

alter table EXPOSANT add constraint FK_FAIRE foreign key (ID_RES)
      references RESERVATION (ID_RES) on delete restrict on update restrict;

alter table EXPOSANT add constraint FK_FOURNIR foreign key (ID_AH)
      references ATTESTATIONHONNEUR (ID_AH) on delete restrict on update restrict;

alter table RESERVATION add constraint FK_CORRESPONDRE foreign key (ID_VG)
      references VIDEGRENIER (ID_VG) on delete restrict on update restrict;

alter table UTILISATEUR add constraint FK_AVOIR foreign key (ID_ROL)
      references ROLE (ID_ROL) on delete restrict on update restrict;

