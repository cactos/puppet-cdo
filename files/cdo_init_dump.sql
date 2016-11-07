-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 134.60.64.144    Database: repo1
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CDO_BRANCHES`
--

DROP TABLE IF EXISTS `CDO_BRANCHES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_BRANCHES` (
  `ID` int(11) NOT NULL,
  `NAME` longtext,
  `BASE_ID` int(11) DEFAULT NULL,
  `BASE_TIME` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_BRANCHES`
--

LOCK TABLES `CDO_BRANCHES` WRITE;
/*!40000 ALTER TABLE `CDO_BRANCHES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CDO_BRANCHES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_COMMIT_INFOS`
--

DROP TABLE IF EXISTS `CDO_COMMIT_INFOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_COMMIT_INFOS` (
  `COMMIT_TIME` bigint(20) NOT NULL,
  `PREVIOUS_TIME` bigint(20) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `USER_ID` longtext,
  `COMMIT_COMMENT` longtext,
  PRIMARY KEY (`COMMIT_TIME`),
  KEY `I1475761962813_8` (`BRANCH_ID`),
  KEY `I1475761962813_9` (`USER_ID`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_COMMIT_INFOS`
--

LOCK TABLES `CDO_COMMIT_INFOS` WRITE;
/*!40000 ALTER TABLE `CDO_COMMIT_INFOS` DISABLE KEYS */;
INSERT INTO `CDO_COMMIT_INFOS` VALUES (1475761980440,1475761980440,0,'CDO_SYSTEM','<initialize>'),(1475762016454,1475761980440,0,'CDO_SYSTEM',NULL),(1475762058177,1475762016454,0,'CDO_SYSTEM',NULL),(1475762180567,1475762058177,0,'Administrator',NULL),(1475762180661,1475762180567,0,'CDO_SYSTEM',NULL),(1475762194666,1475762180661,0,'Administrator','<1 addition, 1 change>'),(1475762202138,1475762194666,0,'Administrator','<1 addition, 1 change>'),(1475762207940,1475762202138,0,'Administrator','<1 addition, 1 change>'),(1475762216180,1475762207940,0,'Administrator','<1 addition, 1 change>'),(1475762303997,1475762216180,0,'Administrator',NULL),(1475762325311,1475762303997,0,'Administrator',NULL),(1475762357284,1475762325311,0,'Administrator',NULL),(1475762376948,1475762357284,0,'Administrator',NULL),(1475762412403,1475762376948,0,'CDO_SYSTEM',NULL),(1475762417811,1475762412403,0,'CDO_SYSTEM',NULL),(1475762421864,1475762417811,0,'CDO_SYSTEM',NULL),(1475762426313,1475762421864,0,'CDO_SYSTEM',NULL),(1475762439899,1475762426313,0,'Administrator',NULL),(1475762468099,1475762439899,0,'Administrator',NULL),(1475762513003,1475762468099,0,'Administrator',NULL),(1475762821258,1475762513003,0,'CactoScale','<1 change, 4 removals>');
/*!40000 ALTER TABLE `CDO_COMMIT_INFOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_EXTERNAL_REFS`
--

DROP TABLE IF EXISTS `CDO_EXTERNAL_REFS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_EXTERNAL_REFS` (
  `ID` bigint(20) NOT NULL,
  `URI` longtext,
  `COMMITTIME` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `I1475761976916_12` (`URI`(767))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_EXTERNAL_REFS`
--

LOCK TABLES `CDO_EXTERNAL_REFS` WRITE;
/*!40000 ALTER TABLE `CDO_EXTERNAL_REFS` DISABLE KEYS */;
INSERT INTO `CDO_EXTERNAL_REFS` VALUES (-188,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#/',1475762016454),(-187,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ListConstruction/elements',1475762016454),(-186,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ListConstruction',1475762016454),(-185,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//LinkedExpression/expression',1475762016454),(-184,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//LinkedExpression',1475762016454),(-183,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//LinkedObject/object',1475762016454),(-182,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//LinkedObject',1475762016454),(-181,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ContainedObject/object',1475762016454),(-180,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ContainedObject',1475762016454),(-179,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ContextAccess',1475762016454),(-178,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//MemberAccess/object',1475762016454),(-177,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//MemberAccess',1475762016454),(-176,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//Access/name',1475762016454),(-175,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//StaticAccess',1475762016454),(-174,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//MemberInvocation/object',1475762016454),(-173,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//MemberInvocation',1475762016454),(-172,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//Invocation/name',1475762016454),(-171,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//Invocation/arguments',1475762016454),(-170,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//FunctionInvocation',1475762016454),(-169,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//StringValue/literal',1475762016454),(-168,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//StringValue',1475762016454),(-167,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//CharValue/literal',1475762016454),(-166,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//CharValue',1475762016454),(-165,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//DoubleValue/literal',1475762016454),(-164,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//DoubleValue',1475762016454),(-163,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//FloatValue/literal',1475762016454),(-162,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//FloatValue',1475762016454),(-161,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//LongValue/literal',1475762016454),(-160,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//LongValue',1475762016454),(-159,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//IntValue/literal',1475762016454),(-158,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//IntValue',1475762016454),(-157,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ShortValue/literal',1475762016454),(-156,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ShortValue',1475762016454),(-155,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ByteValue/literal',1475762016454),(-154,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//ByteValue',1475762016454),(-153,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//BooleanValue/literal',1475762016454),(-152,'http://www.eclipse.org/emf/CDO/expressions/4.3.0#//BooleanValue',1475762016454),(-151,'http://www.eclipse.org/emf/CDO/security/4.1.0#//OrFilter',1475762016454),(-150,'http://www.eclipse.org/emf/CDO/security/4.1.0#//AndFilter',1475762016454),(-149,'http://www.eclipse.org/emf/CDO/security/4.1.0#//CombinedFilter/operands',1475762016454),(-148,'http://www.eclipse.org/emf/CDO/security/4.1.0#//NotFilter',1475762016454),(-147,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ExpressionFilter/expression',1475762016454),(-146,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ExpressionFilter',1475762016454),(-145,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/includeRoot',1475762016454),(-144,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/includeParents',1475762016454),(-143,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/modelObjects',1475762016454),(-142,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/modelResources',1475762016454),(-141,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/binaryResources',1475762016454),(-140,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/textResources',1475762016454),(-139,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/folders',1475762016454),(-138,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/patternStyle',1475762016454),(-137,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter/path',1475762016454),(-136,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourceFilter',1475762016454),(-135,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ClassFilter/subTypes',1475762016454),(-134,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ClassFilter/applicableClass',1475762016454),(-133,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ClassFilter',1475762016454),(-132,'http://www.eclipse.org/emf/CDO/security/4.1.0#//PackageFilter/applicablePackage',1475762016454),(-131,'http://www.eclipse.org/emf/CDO/security/4.1.0#//PackageFilter',1475762016454),(-130,'http://www.eclipse.org/emf/CDO/security/4.1.0#//LinkedFilter/filter',1475762016454),(-129,'http://www.eclipse.org/emf/CDO/security/4.1.0#//LinkedFilter',1475762016454),(-128,'http://www.eclipse.org/emf/CDO/security/4.1.0#//FilterPermission/filters',1475762016454),(-127,'http://www.eclipse.org/emf/CDO/security/4.1.0#//FilterPermission',1475762016454),(-126,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourcePermission/pattern',1475762016454),(-125,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ResourcePermission',1475762016454),(-124,'http://www.eclipse.org/emf/CDO/security/4.1.0#//PackagePermission/applicablePackage',1475762016454),(-123,'http://www.eclipse.org/emf/CDO/security/4.1.0#//PackagePermission',1475762016454),(-122,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ClassPermission/applicableClass',1475762016454),(-121,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Permission/access',1475762016454),(-120,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Permission/role',1475762016454),(-119,'http://www.eclipse.org/emf/CDO/security/4.1.0#//ClassPermission',1475762016454),(-118,'http://www.eclipse.org/emf/CDO/security/4.1.0#//UserPassword/encrypted',1475762016454),(-117,'http://www.eclipse.org/emf/CDO/security/4.1.0#//UserPassword',1475762016454),(-116,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User/password',1475762016454),(-115,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User/locked',1475762016454),(-114,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User/defaultAccessOverride',1475762016454),(-113,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User/email',1475762016454),(-112,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User/lastName',1475762016454),(-111,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User/firstName',1475762016454),(-110,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User/groups',1475762016454),(-109,'http://www.eclipse.org/emf/CDO/security/4.1.0#//User',1475762016454),(-108,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Group/inheritingGroups',1475762016454),(-107,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Group/inheritedGroups',1475762016454),(-106,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Group/users',1475762016454),(-105,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Assignee/roles',1475762016454),(-104,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Assignee/id',1475762016454),(-103,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Group',1475762016454),(-102,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Role/assignees',1475762016454),(-101,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Role/permissions',1475762016454),(-100,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Role/id',1475762016454),(-99,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Role',1475762016454),(-98,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Directory/name',1475762016454),(-97,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Directory/items',1475762016454),(-96,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Directory',1475762016454),(-95,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Realm/defaultRoleDirectory',1475762016454),(-94,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Realm/defaultGroupDirectory',1475762016454),(-93,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Realm/defaultUserDirectory',1475762016454),(-92,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Realm/defaultAccess',1475762016454),(-91,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Realm/name',1475762016454),(-90,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Realm/items',1475762016454),(-89,'http://www.eclipse.org/emf/CDO/security/4.1.0#//Realm',1475762016454),(-88,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0#//Annotation/references',1475761980440),(-87,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0#//Annotation/contents',1475761980440),(-86,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0#//Annotation/modelElement',1475761980440),(-85,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0#//Annotation/details',1475761980440),(-84,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0#//Annotation/source',1475761980440),(-83,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0#//ModelElement/annotations',1475761980440),(-82,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0#//Annotation',1475761980440),(-81,'http://www.eclipse.org/emf/2002/Ecore#//ETypeParameter/eBounds',1475761980440),(-80,'http://www.eclipse.org/emf/2002/Ecore#//ETypeParameter',1475761980440),(-79,'http://www.eclipse.org/emf/2002/Ecore#//EGenericType/eClassifier',1475761980440),(-78,'http://www.eclipse.org/emf/2002/Ecore#//EGenericType/eTypeParameter',1475761980440),(-77,'http://www.eclipse.org/emf/2002/Ecore#//EGenericType/eLowerBound',1475761980440),(-76,'http://www.eclipse.org/emf/2002/Ecore#//EGenericType/eTypeArguments',1475761980440),(-75,'http://www.eclipse.org/emf/2002/Ecore#//EGenericType/eUpperBound',1475761980440),(-74,'http://www.eclipse.org/emf/2002/Ecore#//EGenericType',1475761980440),(-73,'http://www.eclipse.org/emf/2002/Ecore#//EStringToStringMapEntry/value',1475761980440),(-72,'http://www.eclipse.org/emf/2002/Ecore#//EStringToStringMapEntry/key',1475761980440),(-71,'http://www.eclipse.org/emf/2002/Ecore#//EStringToStringMapEntry',1475761980440),(-70,'http://www.eclipse.org/emf/2002/Ecore#//EReference/eKeys',1475761980440),(-69,'http://www.eclipse.org/emf/2002/Ecore#//EReference/eOpposite',1475761980440),(-68,'http://www.eclipse.org/emf/2002/Ecore#//EReference/resolveProxies',1475761980440),(-67,'http://www.eclipse.org/emf/2002/Ecore#//EReference/containment',1475761980440),(-66,'http://www.eclipse.org/emf/2002/Ecore#//EReference',1475761980440),(-65,'http://www.eclipse.org/emf/2002/Ecore#//EParameter/eOperation',1475761980440),(-64,'http://www.eclipse.org/emf/2002/Ecore#//EParameter',1475761980440),(-63,'http://www.eclipse.org/emf/2002/Ecore#//EPackage/eSuperPackage',1475761980440),(-62,'http://www.eclipse.org/emf/2002/Ecore#//EPackage/eSubpackages',1475761980440),(-61,'http://www.eclipse.org/emf/2002/Ecore#//EPackage/eClassifiers',1475761980440),(-60,'http://www.eclipse.org/emf/2002/Ecore#//EPackage/nsPrefix',1475761980440),(-59,'http://www.eclipse.org/emf/2002/Ecore#//EPackage/nsURI',1475761980440),(-58,'http://www.eclipse.org/emf/2002/Ecore#//EPackage',1475761980440),(-57,'http://www.eclipse.org/emf/2002/Ecore#//EOperation/eGenericExceptions',1475761980440),(-56,'http://www.eclipse.org/emf/2002/Ecore#//EOperation/eParameters',1475761980440),(-55,'http://www.eclipse.org/emf/2002/Ecore#//EOperation/eTypeParameters',1475761980440),(-54,'http://www.eclipse.org/emf/2002/Ecore#//EOperation/eContainingClass',1475761980440),(-53,'http://www.eclipse.org/emf/2002/Ecore#//EOperation',1475761980440),(-52,'http://www.eclipse.org/emf/2002/Ecore#//EObject',1475761980440),(-51,'http://www.eclipse.org/emf/2002/Ecore#//EFactory',1475761980440),(-50,'http://www.eclipse.org/emf/2002/Ecore#//EEnumLiteral/eEnum',1475761980440),(-49,'http://www.eclipse.org/emf/2002/Ecore#//EEnumLiteral/literal',1475761980440),(-48,'http://www.eclipse.org/emf/2002/Ecore#//EEnumLiteral/value',1475761980440),(-47,'http://www.eclipse.org/emf/2002/Ecore#//EEnumLiteral',1475761980440),(-46,'http://www.eclipse.org/emf/2002/Ecore#//EEnum/eLiterals',1475761980440),(-45,'http://www.eclipse.org/emf/2002/Ecore#//EEnum',1475761980440),(-44,'http://www.eclipse.org/emf/2002/Ecore#//EDataType/serializable',1475761980440),(-43,'http://www.eclipse.org/emf/2002/Ecore#//EDataType',1475761980440),(-42,'http://www.eclipse.org/emf/2002/Ecore#//EClass/eGenericSuperTypes',1475761980440),(-41,'http://www.eclipse.org/emf/2002/Ecore#//EClass/eStructuralFeatures',1475761980440),(-40,'http://www.eclipse.org/emf/2002/Ecore#//EClass/eOperations',1475761980440),(-39,'http://www.eclipse.org/emf/2002/Ecore#//EClass/interface',1475761980440),(-38,'http://www.eclipse.org/emf/2002/Ecore#//EClass/abstract',1475761980440),(-37,'http://www.eclipse.org/emf/2002/Ecore#//EClassifier/eTypeParameters',1475761980440),(-36,'http://www.eclipse.org/emf/2002/Ecore#//EClassifier/ePackage',1475761980440),(-35,'http://www.eclipse.org/emf/2002/Ecore#//EClassifier/instanceTypeName',1475761980440),(-34,'http://www.eclipse.org/emf/2002/Ecore#//EClass',1475761980440),(-33,'http://www.eclipse.org/emf/2002/Ecore#//EAnnotation/references',1475761980440),(-32,'http://www.eclipse.org/emf/2002/Ecore#//EAnnotation/contents',1475761980440),(-31,'http://www.eclipse.org/emf/2002/Ecore#//EAnnotation/eModelElement',1475761980440),(-30,'http://www.eclipse.org/emf/2002/Ecore#//EAnnotation/details',1475761980440),(-29,'http://www.eclipse.org/emf/2002/Ecore#//EAnnotation/source',1475761980440),(-28,'http://www.eclipse.org/emf/2002/Ecore#//EAnnotation',1475761980440),(-27,'http://www.eclipse.org/emf/2002/Ecore#//EAttribute/iD',1475761980440),(-26,'http://www.eclipse.org/emf/2002/Ecore#//EStructuralFeature/eContainingClass',1475761980440),(-25,'http://www.eclipse.org/emf/2002/Ecore#//EStructuralFeature/derived',1475761980440),(-24,'http://www.eclipse.org/emf/2002/Ecore#//EStructuralFeature/unsettable',1475761980440),(-23,'http://www.eclipse.org/emf/2002/Ecore#//EStructuralFeature/defaultValueLiteral',1475761980440),(-22,'http://www.eclipse.org/emf/2002/Ecore#//EStructuralFeature/transient',1475761980440),(-21,'http://www.eclipse.org/emf/2002/Ecore#//EStructuralFeature/volatile',1475761980440),(-20,'http://www.eclipse.org/emf/2002/Ecore#//EStructuralFeature/changeable',1475761980440),(-19,'http://www.eclipse.org/emf/2002/Ecore#//ETypedElement/eGenericType',1475761980440),(-18,'http://www.eclipse.org/emf/2002/Ecore#//ETypedElement/upperBound',1475761980440),(-17,'http://www.eclipse.org/emf/2002/Ecore#//ETypedElement/lowerBound',1475761980440),(-16,'http://www.eclipse.org/emf/2002/Ecore#//ETypedElement/unique',1475761980440),(-15,'http://www.eclipse.org/emf/2002/Ecore#//ETypedElement/ordered',1475761980440),(-14,'http://www.eclipse.org/emf/2002/Ecore#//ENamedElement/name',1475761980440),(-13,'http://www.eclipse.org/emf/2002/Ecore#//EModelElement/eAnnotations',1475761980440),(-12,'http://www.eclipse.org/emf/2002/Ecore#//EAttribute',1475761980440),(-11,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOTextResource/encoding',1475761980440),(-10,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOTextResource/contents',1475761980440),(-9,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOTextResource',1475761980440),(-8,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOBinaryResource/contents',1475761980440),(-7,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOBinaryResource',1475761980440),(-6,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOResource/contents',1475761980440),(-5,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOResource',1475761980440),(-4,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOResourceFolder/nodes',1475761980440),(-3,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOResourceNode/name',1475761980440),(-2,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOResourceNode/folder',1475761980440),(-1,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0#//CDOResourceFolder',1475761980440);
/*!40000 ALTER TABLE `CDO_EXTERNAL_REFS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_LOBS`
--

DROP TABLE IF EXISTS `CDO_LOBS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_LOBS` (
  `ID` longtext NOT NULL,
  `LSIZE` bigint(20) DEFAULT NULL,
  `BDATA` longblob,
  `CDATA` longtext,
  PRIMARY KEY (`ID`(64))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_LOBS`
--

LOCK TABLES `CDO_LOBS` WRITE;
/*!40000 ALTER TABLE `CDO_LOBS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CDO_LOBS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_LOCK_AREAS`
--

DROP TABLE IF EXISTS `CDO_LOCK_AREAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_LOCK_AREAS` (
  `ID` longtext NOT NULL,
  `USER_ID` longtext,
  `VIEW_BRANCH` int(11) DEFAULT NULL,
  `VIEW_TIME` bigint(20) DEFAULT NULL,
  `READ_ONLY` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`(255)),
  KEY `I1475761977726_14` (`USER_ID`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_LOCK_AREAS`
--

LOCK TABLES `CDO_LOCK_AREAS` WRITE;
/*!40000 ALTER TABLE `CDO_LOCK_AREAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CDO_LOCK_AREAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_LOCKS`
--

DROP TABLE IF EXISTS `CDO_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_LOCKS` (
  `AREA_ID` longtext NOT NULL,
  `OBJECT_ID` bigint(20) NOT NULL,
  `LOCK_GRADE` int(11) DEFAULT NULL,
  PRIMARY KEY (`AREA_ID`(255),`OBJECT_ID`),
  KEY `I1475761978659_16` (`AREA_ID`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_LOCKS`
--

LOCK TABLES `CDO_LOCKS` WRITE;
/*!40000 ALTER TABLE `CDO_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CDO_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_OBJECTS`
--

DROP TABLE IF EXISTS `CDO_OBJECTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_OBJECTS` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_CLASS` bigint(20) DEFAULT NULL,
  `CDO_CREATED` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_OBJECTS`
--

LOCK TABLES `CDO_OBJECTS` WRITE;
/*!40000 ALTER TABLE `CDO_OBJECTS` DISABLE KEYS */;
INSERT INTO `CDO_OBJECTS` VALUES (1,-5,1475761980440),(2,-5,1475762016454),(3,-89,1475762016454),(4,-96,1475762016454),(5,-99,1475762016454),(6,-127,1475762016454),(7,-136,1475762016454),(8,-99,1475762016454),(9,-127,1475762016454),(10,-136,1475762016454),(11,-99,1475762016454),(12,-127,1475762016454),(13,-131,1475762016454),(14,-99,1475762016454),(15,-127,1475762016454),(16,-131,1475762016454),(17,-99,1475762016454),(18,-127,1475762016454),(19,-136,1475762016454),(20,-127,1475762016454),(21,-136,1475762016454),(22,-96,1475762016454),(23,-103,1475762016454),(24,-103,1475762016454),(25,-96,1475762016454),(26,-109,1475762016454),(28,-99,1475762058177),(29,-127,1475762058177),(30,-136,1475762058177),(31,-127,1475762058177),(32,-136,1475762058177),(33,-1,1475762058177),(34,-1,1475762058177),(35,-109,1475762180567),(36,-109,1475762180567),(37,-109,1475762180567),(38,-1,1475762180661),(39,-1,1475762180661),(40,-1,1475762180661),(45,-99,1475762357284),(46,-127,1475762357284),(47,-136,1475762357284),(48,-127,1475762357284),(49,-136,1475762357284),(50,-117,1475762412403),(51,-117,1475762417811),(52,-117,1475762421864),(53,-117,1475762426313);
/*!40000 ALTER TABLE `CDO_OBJECTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_PACKAGE_INFOS`
--

DROP TABLE IF EXISTS `CDO_PACKAGE_INFOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_PACKAGE_INFOS` (
  `URI` longtext NOT NULL,
  `PARENT` longtext,
  `UNIT` longtext,
  PRIMARY KEY (`URI`(255)),
  KEY `I1475761962813_4` (`PARENT`(255)),
  KEY `I1475761962813_5` (`UNIT`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_PACKAGE_INFOS`
--

LOCK TABLES `CDO_PACKAGE_INFOS` WRITE;
/*!40000 ALTER TABLE `CDO_PACKAGE_INFOS` DISABLE KEYS */;
INSERT INTO `CDO_PACKAGE_INFOS` VALUES ('http://www.eclipse.org/emf/2002/Ecore',NULL,'http://www.eclipse.org/emf/2002/Ecore'),('http://www.eclipse.org/emf/CDO/Eresource/4.0.0',NULL,'http://www.eclipse.org/emf/CDO/Eresource/4.0.0'),('http://www.eclipse.org/emf/CDO/Etypes/4.0.0',NULL,'http://www.eclipse.org/emf/CDO/Etypes/4.0.0'),('http://www.eclipse.org/emf/CDO/expressions/4.3.0',NULL,'http://www.eclipse.org/emf/CDO/expressions/4.3.0'),('http://www.eclipse.org/emf/CDO/security/4.1.0',NULL,'http://www.eclipse.org/emf/CDO/security/4.1.0');
/*!40000 ALTER TABLE `CDO_PACKAGE_INFOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_PACKAGE_UNITS`
--

DROP TABLE IF EXISTS `CDO_PACKAGE_UNITS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_PACKAGE_UNITS` (
  `ID` longtext NOT NULL,
  `ORIGINAL_TYPE` int(11) DEFAULT NULL,
  `TIME_STAMP` bigint(20) DEFAULT NULL,
  `PACKAGE_DATA` longblob,
  PRIMARY KEY (`ID`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_PACKAGE_UNITS`
--

LOCK TABLES `CDO_PACKAGE_UNITS` WRITE;
/*!40000 ALTER TABLE `CDO_PACKAGE_UNITS` DISABLE KEYS */;
INSERT INTO `CDO_PACKAGE_UNITS` VALUES ('http://www.eclipse.org/emf/2002/Ecore',1,1475761980440,'PK\0\0†nFI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContents›\\[o€6~ÔØ0‹Ω÷jªó!H24âSxMñ\"Iá√ôv‘ ¢KIN≤_?ﬁDR%Q%ª›Kô<¸xÓ<<“ÒÔœõp≤É8Pt2}7{;ù¿»GÀ ZüLø‹_æ˘m˙˚È´cË#èÊüÅˇ\r¨·‰y…IÔÈ$B&äè»ÛìÈcílè<ÔÈÈiÜ6Î¬kÔÔÎÖÁá<˝ Fº˚ˆvuÁ?¬\rxDq\"N_M»|&√êõ˝0ÿ∆êÄõ%Úﬁõ”a”I6d0ƒ_nˆS„œÆÇÁl˙)qœC«¡* €ûêM%/€lÅ£9˚1[t˛!Ipê&ÑºK∑ﬂì±Ò…ÙµÁÕÔú˙IäAx	˘óìßî~1¨£QÊkdç{6ÑR?C(Ñ özmàﬁ¬ƒêr;„ö\\ÜRûNBÙÒJ£%Q.˙ü∂ÓH\0Î?Çh\r¡CH~YÅ0&èv(I@0‰ÔÉ(`îdñ;∏2Ï«ûŒˆà\"îêEQd¡5Z¬p¬\rÅ–è˚1J1eõ∆	BáÿNO,aÇêl\'›n%ÁﬂòYœºG¸ﬂk∞ùG	~!Ç@!m4>ì≈Q∏Éü1z(3∏|zÍJéõ:∞‹yI¯fPx≥›¢8Hƒ<®ƒ˜ÑOπDH⁄±˙Ê·+Ùì—Xã≥≠–π0ÒW…r	i77dóDÊëb9ÎfetNß˝1¸0ôìPDôAm`∂∏ö»üdÃÙ¥5+Q¨a\"8}NòñWÃEî(…òf\Zút¡‚å.‹∏£≤∏®Ñ–r?JÕÀ7‡oe\0˝I˛®s§∂–‰≥.rósÛ‘”öm†lêIﬂ‘–≤ÅPÅæ5í‚·`	{0√°F<√–(~ÑI|ˆ|P#ËîÄáòD;?Èü°ï”>µ\nrGŸüÚ˙VqG¯Î4äaíƒOÂq›Q(!ÿE?•r÷·πòdH\Z$zr\ZƒÂÉO◊Ñ:•Ìˆ£âºCJ-)\ZRÎ^ª∏móìh4f?¡~]:Wv˙ã\"{x™⁄Ey¢Z´∞´˙8j±´Í”†Û]uäeéä›ë/.Ù\Zí…í%˙˛Xá©Ù…≤úQ“ßÆÒºDÀy\\	hK-””÷rﬁ4ZÂÜòGøçÕÁ;∂vï^°òd˘w∂Z©úAœúÀb!–P–Xd’Ëñ’$ÍE⁄¨?¿ËÖöá µµö#f◊„ﬂ [¢Í$.≈Xt/˝2ˇz0&˝™“†_JRöO4ÌR\"‚kü ïé;>‡u ≤OíÚtZR†Â}˜‚»Æ@\Z&Å0ÖU⁄‰0∏E9≤*ï]ú∏∞ a»û’q¨ƒ°Bd4ræ™/VäPπ´@íõb\n.\\™∫€±©wªG!˙¬‡?*£ì’≤^e\nWDdá[ùGÈ∆∞M…Å⁄‚!ù, Âˆ†?Ø	ë£h_ªíóÈR¬‘W;{È\'4Lµ‡L7xÏå/«ÁŒ9™F≈ÉLˇ\\)≤b∫Uﬁ”…pÎï•_\0)iï1¬’Èdøe-≠£V	ØíﬂLªcØKûRbätIÚgDØìÌn—KÆ¿«ÑQÖû∞‘ÿºõ+@æÙ%F!∆äÃ©à˚‘\\˘–kˆ[Âú≠ã[\'ﬁeqí]ÚõË\r≥ãÃkSO˜~X¶mÕù\'rhGõëôú–ty÷sa=˘ﬁà¬y¥6|Ê\ZX¥˙èz\\{ãﬁ‘ñ‚NTz+ÜU-Z€XÁ†©àx˘˛BÀE«Ê\"Çªn¢⁄∞Á¶ræŒ†sç.◊0eS1Ω‘_Añß›BÉ~ á5EÌéût*⁄^jÁV⁄5+4ì¢≤6—RÊ—@É]yX÷#ÊWAúT◊\" Ú©,RXƒùÏñ¶\r‹{·\"π⁄~Püc«⁄5ﬂ¿Ëè∞≤N8nwœHåÑÁØı&v;∏ÉCç‡SÁÑ»‰FÔ†πGdd…°≈∑±]D;Ù≠íì8ˆ·ñÕ»Œó;‰3˜\0”L)˚›A?íq.»Ï?ÁZ9íÍ˙±Ÿg∞ß\nH?˚f\ZOä9\r˝ﬂÊãëÜNµÍƒYkY∑—¶6=˜YnÒ⁄∞ú\'\rpúgÑı=lÖπœIØúZ(÷\'>ACcmÔèÙRˆm‚ñ“ıïá&-9ΩíÓÈô‘•M∑[\ZtõÔ∏ﬂÌƒGﬂKÍ]q4êÂ/0\rPÀ,VI,*4≤Ñÿ—\rä˘û¨\nı‹Ç~e◊÷X\rv`r⁄l¥3¿wÈ√ñS≤uí¬~ö— Í≥4gx5ZÉ›ºÍ\\q„udh±Àáz∂5W‰.‰Z[≥n]L€ﬁ–/:j∫<@?Ωo,-ïnü˜›[ëówØõÚ>\ZÃï´©Ú’≥;õß\"Õ·ÂPZ6?¡ó∂›ÿ.L––/Y(Y›y’/û’æM%Àµ˘f™·ªØ%gJ£F1¥Ú›∫Pﬂ‹ù¥Ñhÿ·>√˝°:‚‘qjv3†Cº∂œ¢á°{‹Ö∑Ã˘ºé\r¬ùƒÑ0TÖò˜$i|O˜‰≈T\0w‹&§\"mâp˝¶ﬁı\\x\"ÛùÁ¡8øßA£∂Ì=c‚û˘§-Q›!ú+|UƒÏ¡å[(´˙ÙG©ùˇd˙ïƒ≈YJ∞œ»∞_¯∏^:ˆ\ræ∏ÎÂvBá-Âó≈‰eènä˚≈Ïˇåz;÷Eπ4Ω}›y,ò∑‡©’È2+˛Y$9N‰ï9vÓ]ƒz©¨Í™HEsyﬂU∂XWÏúñ7ƒ§<∏…¥ÊáÍ,9÷–6ÙPWf6 yúi3Œh≠ÇﬁÌ%?…Ê±Ô∞Òo≤±Ô±±ı=\Z∞º˘s£%\\^√P< 	ãœdMH,:ô>ÄXd,ä4dÓıR‡SæYCËå]$!Ök™>MÏ *ªÅoHvâ0k‚’C.{JΩJC±\'Îç©R®êÑ©ŸŸ~ŸU¨A\'+÷¬‡£R≤‰ûÖ/4€4©˝·`uÎ%ÅCsÂ∆¿|v†´ˇÛÔ¡2Á>ü öÅ9dgw{‘#Æ›vGFé`nÁè¿˘|˙É◊ï$IBf%9zo29ó;mí	9ÇL.@ÖT56§ìt.∞éPú>ŸM`é‰ÑÀÚ˚ªÑÀ3m6(+Ê∂È/Á3⁄∂¯P ÍXK˛”°∫9oH≈`+Xô’≈^yïI— ™¯ÿÏäw˝∂Ux>´FÕ3Á£Y—iÓÍ\\ßΩ_€z•WsùY´8A_É≠*FÜÉ“f™∫‹jÖLîaù„0Î·ä˝r®é£–@c¨‹€Â>%hÂ‹ÿ–|ΩU3±,àWüÇhhñ–ràï>Ìπ¥£ﬂ∂÷Î8Ç6©üÜ‰]Î™Ä˜Æ†˛“Q-®‹g÷[.rÖËÀ˚Ú!íØû!1p™ÂäÎØˆ»%.;+#¢#G∞¢™¨(w’€9≥¸§ÆhåøˇÂ ‘Î‡÷ySfrÆÎ*#ÃﬁÃÏéãNw\rÌÓa3®ò˝r®^Ñ£–c¨¸»›>%hÂIÿ–\\IˆYôzÆÈö9@˝*æ£ÂúKπ/¥=%Á&Ô˝∏_˝uΩ`∏\nâ.Œ™Á◊ªªcO ØÒúæ˙PKC∫æ%w\n\0\0Çl\0\0PK\0\0\0†nFIC∫æ%w\n\0\0Çl\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContentsPK\0\0\0\0\0\0>\0\0\0µ\n\0\0\0\0'),('http://www.eclipse.org/emf/CDO/Eresource/4.0.0',0,1475761980440,'PK\0\0†nFI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContents’XQo‚8~ÔØàr˚⁄§Ì›J\']Ö;$v©†]›´1ı5±#€Åˆ~˝çM$,ÑÓnUEƒûôof>{f“¸ÙGﬁ§bÇ∑¸Î‡ ˜ÄS1c|—Ú˙ó˙ün/ö@ÖÑFÔû–g≤\0Ô%fçBË∆°\ZÆ\Z¯ºÂ?iù4¬pµZ\"^B.¬>ä-j{ÀÍwª„ÊÍÍ\Z∑\r\'Ù	br…∏“ÑS/<¸¨%-Ü-Y†KXœçíõ∞g∂˘\'1n	J§íöÍq<8(ﬁΩÖΩ\\ ¸#∏B«¨}ÆÓ%ÃŸã´ÔWö–çàRlŒ0z÷–Øâ±∫éñ]Ãë†Úq&˚EÃô*-	’-_Àt≠œhú‡/™SI¢>¸Ü≈cò#N7Á\"öÅƒ‘=ÿmøÖ°cÆø^¥˙Õ«∏-·^ä\nÖI§PåíD(¶+‰Cé®ïûÇ≥≠µd”T8Õˇe∂ÈéhbxA‚ﬂ&áà¢áVêâYpåŸ6ÁBçƒSﬁ\Z^eJM:Ô:mËp[xﬂúÅ&,Rﬁ3º∂|*¢4Ê∆ºÔ-Iî¢∂ØÌq˜Ôˆ8˜¥Jf|°ü\n©õè7Õ–≈ôE,,	ŸY¡Là±z0∑ñ\"BÑdÙêé\\1‡9%=L;[¬,˚i›C7Œüq˙9e\'i“`Vªƒ≥Á$—wey_Î\"≥ŸûÆÙﬂPËûHT†\r⁄ÛXô›Ä;n–˜\0Ò^tÃ≠•w\0µ√8ëØ`w0‹Zw¯˙~ı“’uD Òÿ]^ok)e÷ïÑ\né◊èùì{ÍoÖYy€s~ÑÅÃO™|{ó`^è\'†]\nåù«EwÔ∑ÛjY:∏Õœùµ“rŸÕZõ8&˝®˙€‹q3UJÌ—Ù_†˙Bù¡€Ld”Ï§„◊\"¬øWV#AfÁ\"¢OÑ/ÄL\r≤ÉwD©ùì4“_M71ƒä®wItgˆ‹4ùÁ3^cüm\n®ΩæﬁS\Z@J!è∫\rÔYp°4£~ù¿óËÆà‰‹_øf1\ní89âC·6ó•|x≥™b«ÓıÕ^2¨a±è¡ﬂ‘≤,n’6≥cØıå6y⁄Îp†ª≈≈âUA£kßõ˘8¶ù⁄î8nïÊ´g‹TÎ±ë≈‘ùä,¬∂\\§Ê“Wﬁ6‡‹57·ΩÕ´•¢3:;˘•M]Mä”äÿV‘ÃÅÏD…=∫◊öX≥óï”jb^π(Éªò;›”^cÃ≤∂aÒ6çˆ”Ó8∂√ò”Ë7‡I™êÿi•˜‡º	oJ&óüŒöÓØÃöz%={≠xŒ∞ıÛ¯:RÃFoH’‹b$wnÒÚó†V√ªé˘.rèy¨ö ÇÇí±G!J±ˇ‹Æ‚ò:∏ãÃŒ7G ¢\"éRlZ#S«ñ€’¬GÕ·``⁄∂ﬁoﬂ^¸PKVÇö0\'\0\0\0\0PK\0\0\0†nFIVÇö0\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContentsPK\0\0\0\0\0\0>\0\0\0e\0\0\0\0'),('http://www.eclipse.org/emf/CDO/Etypes/4.0.0',0,1475761980440,'PK\0\0†nFI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContentsµV]o⁄0}ÁWDﬁ31∞=LàPµ4ïê`†B•Ωö‰B›%vd;@˜Îwmí,ÈCH7˜‹{Ó9˛`p∑OoJs)“ı;ƒ…òãM@^ñOÌÔ‰nÿ\Z@$Ù√9ã~±\rx˚î˜+PœÇ∞å–}å‰’ò¨OÈn∑Ûe∫Ò•⁄–ü”qï¢õ)ªØ.£◊Èt1m≤à^!em.¥a\"“Ús@:\r,D	œ4∏êÆmë\rm\ZÒK1Ã{\ZÈóÁÒIÏËqFCóMø˘…uzÆ`Õ˜U•!Ü0Jò÷|ÕQÍ€wòr…Ω,	LeIò@\n¬è≠¥Q,21*WÃñõe†òA1uÅ⁄ÄπB\ZDGñÆ˛Jk—ÿ¬ÁL! X2∏ñπBÌJ\\¡ÎëfûÔS¸˛ÎÜ£–rBJ¥∆©dâ)ydr≈í\'`¯Ñ#≥?√\ZX„\n*¨\"åí‰}êπà“Óíb\0Ô¯|^$Öa\\XÂ\nΩ<Ï)ì-Ãï‹s–Y≥D€9gY&57k–¥Ææõ\r\'´ôwÆõ\rS9Ncôk◊∂·Ù9ö›‘~ïõJ≥ÎÌªÃ´PÔ‰süÍ ú`≥îáÁîe°0Í˝ò£UÈ„Œ^7O√˝⁄\"k8ı	Ék´•ıµ}S+VºÅÙ≥’DÊåÕsqUnG˝≤mZÓéíÿC\"Wƒ+Ø˝·^‡y_ù˝xÓ˚Q,˝H¶©>B|º¥`ØAqñﬂlï@C±3Èå.ß3˙t&≥ôú&S.&€Ïüki<ªëπcëÂ◊+∞ÙËolÀ|.˝zﬁç|É:ŸΩH9›µh¸µ\Z∂˛\0PKVÉﬁÖp\0\0ì	\0\0PK\0\0\0†nFIVÉﬁÖp\0\0ì	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContentsPK\0\0\0\0\0\0>\0\0\0Æ\0\0\0\0'),('http://www.eclipse.org/emf/CDO/expressions/4.3.0',0,1475762016454,'PK\0\0≤nFI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContents›ò]O€0ÜÔ˘QvMLaS’A)S¥[◊=I=ª≤ù∂Ï◊Ô8_§Öm¥\r,\ZB†:ˆ9œ˚˙$=qÁto⁄p%ª~+8Ú=êLMπå∫˛˝›Â·ˇ¥w–¶4¥# iﬁ*ÊÌr—±[Ña§i„x◊üY;o≤\\.GÅ“˘~}UN1ÎSñ\'Èå„££NéŸbz»•±T2<¸…V¶kkÅ	>7êÄ8tAé…¿MÛ=Icú´π„8\rô˚€´?Ë_‹ê Ú98Aq)É4#\r!_≠«Ï·µÙ≈œ!GG<‘◊∂Osó;Û,ΩX µæG\'∆j l◊∑:Ab.-Ëê2»ziﬁ‹ÃASÎ“¢T$‘‚∏´f∫†ñ∫/˛>ªÒâê¡W∫†7ì¿lÿÖQç≠„ŒB3Ö+[Fv+≥lòøü_$9©†•Fê™€ZÛÄi‡•+0N0â£1Œ≥Éø5(;‰®ää]-\"˚Î9WJ\0ïπ¨MŸp°`åZôM¯(˛áWÇüY´˘$±emã$ÊPµË{≤–0qHTá≤ÒLi€,i)R⁄Æd√î!P∫ÜJFÕÊàÍPv)mÿû•HuhªP…D4Ï)í1’°Æ?£∫Y⁄Q-OHdi⁄˝ñ1’Ûå\\(ñ6;µ#oQ|!hp\rnûìÍ(âAZÑHÊò·\\%r⁄ı[~ﬁ¨y’ñ¨“E∫éçrÈ÷åxMâå¥ZqáRa†Ï⁄v„s}O®eâ÷Ú_\'*y∑#€Û!ôHÊ6¨∫uõ[UπF∂ç\rÒÙ£Ôe¥ \Z–\r´k-Ç˝¨>c‹ßè∫3\Z^ycãõŒ\nS6M»«w¨∑øD˝øÎ,€¨€Ÿ~&¶˘õﬁª’ma˙WX ÚÍ˜WŒÛOäx»Âcc©M_µíﬂK#Trlsk’\"“X¨nìbøØH–´lÌF—ñám/NÆº‚\\1çÛ-´JïÁÄáõ™†rƒºåí´4†9¸\'≈◊Ö\n8bØñˆ~PK≤ò)tˇ\0\0e\0\0PK\0\0\0≤nFI≤ò)tˇ\0\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContentsPK\0\0\0\0\0\0>\0\0\0=\0\0\0\0'),('http://www.eclipse.org/emf/CDO/security/4.1.0',0,1475762016454,'PK\0\0≤nFI\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContentsÌZ›S€8Ô_·Ò=7z7°ì∑óô∂0!ΩÎ´boÇÆ≤‰ëd ˇ}WÚgLvlB∏)√¿X^Ì˛ˆCª+YgÔÔ#Ê‹ÇTT±{<:r‡Å)_ç›ÔÛOoˇrﬂüø9É@H8ıØHì¨¿πèËi1ÈƒLB6\\ù‚¯ÿΩ—:>ıºªªªëàV#!WﬁèØ”ÇDmí‹Ω≥\'GG«HˆÂ:∏Åàº•\\i¬pﬂ8¯ìŒ¥6ÊB¿h¨¿2Ähiòúxæ!sN\"$V$íÍ5>´Ô≥È£≥?^\\z9Ω˜Á»ÿ¬JÁÍJ¬íﬁW∏ù„ã3¯»àRtI—™u™◊1äÃLe_Ê0Æ≥â>É∏v≤PZí@è]-D◊Iré‘ÿç<ﬂRà‚htÙáÁ}!∞|ÚπEuó8ÉhtÅ §¨@œÄ∞»uò∏˘A$<Dü\"˜πEÜå“˜û≈ÔUÿU£©ÜË	uPl]Ø´∏LØß¯Ê¶ôp.tf%¥éõîÚA îÛ÷c7@F® Â\Z›ñ øøâöÑÂ‘º—B¶JYªVƒÁàÆ—0ÅN$aüÄ‡ÿ¢Òñ ¡D}¶5E„¢¿$éoæ=v3ÑN≈≠õﬁ@¥àùã‰AyÇ›¬ï˜‘ÿnIòÇÒnËcﬂ∫Æ\r@Cà¿n_Y0»8∑Ç°°Ã@\nm…≠ A“[≥«ﬁà?Këƒ≠ [ É¿<ZA6ÑÅ¯\ndDï)≠pó‰;°/8ˆ–b¢µ§ãDZòøEÊÃà.à&f¿¡çøe⁄@|îÇE≥ß‘ñ$az`í_i¢t‰rÒ∫ß2fI^Pâ¸Ñ\\WEïÉÉ»±Î®‰π≈˝4´†çb˝\n`UBCU≤Ÿ¯ˇS\0Ü]\"˝¨üf∫¡ˇ@5\Z>˚⁄‡Ï∏G“lÎpª∆X(å´\ZO\ZãˆL¸»i≈°]≠ödƒuH˘∏§ÜàïRR€6ıu∆èÏ÷&lö›åy•0{÷?’m\\xcüΩ˙$X#õ` o∞CH7ñ√wÎI∑fx”˛fÃ[•Õiø0†©ívnu7ŸA/„Ü—˘y@p%ªA–∫ˆn\\ß;Ô\0∫ÓÈÓ∆=\0Ù/≥ÀÈó„≤ï¸Tä€…$´!Höì˙µyå,ÄÌRŒ\n®{éÆ\Z,©T˙€ãlË0Z^H2DX_x{yR“∂6Ä;Ôhw‹5L82¸Ñn\r‚ÅIèæ;L]wBÜn≠π «KÌÌÒw©˙} ◊ÆΩÊŸˆ$|≠ùB±Ã˙Âu»u¨;&ê·é^™±Q€P˜ﬁæ>ˆÂ º.|‹Ít√Ói´ß*˝“6… À&ƒ∆ fÇ»ñ•ÃÙÇBqc˜ﬂŸtÓ·˚PuFΩ\r≠ºÎó>‚˜Œf˝dÚ7@Î÷PLπâÈ◊Ë˝⁄ ⁄€\n9ü!C!=7yC<X1—»¸ÖrO⁄…=íÅ”ªÛGÁOî°Æ˚Ø•ï‘º¥j•nk•N—v=¸™‰“k˛ËlÛ/îcoúsk∂wF1Ä’[$ÙbáK^˚—Ù†”ó}ÿ∑/e;gTï,¨∫;Ì+ùˆñ^c®Ê5/0œ‚§m%ÊfˇÁYaª÷k	∂:˛∏πÁ3ﬂÔ{R%Xh¡3∆¬Œ‡4‹Î<‚Çr\"◊22∑˘^∆¥›:PÑî,	±†aÜ?på3!Ùß˜‘Õ\r‹”…æsèÁﬂ«hæj◊Xó±Å®W≈áBV◊b_Œ4˜pﬂŸ{∏~Ö€√>˚â”â!Z%aÜ+˚„ŒæÍeKa.ÛımSæ	›i5ãvéÂ	o‹¨Ùe})‰ÏÛ$*∑ïñ&èà,´‰w…˝ìèÛ2˚’ﬁ⁄N\'ø\\q‹H6˘6/®N\Z©f˛gˇGA˜nGáWÃ‡\ZÂM.\Z¡§«s5’:É…ì˚&†Ï;Tãã/ûΩÌíﬁ|±∑^,_/—îa“¿CøÇ&FN√5òÙr^qˇ≈»?›¸ÿVü± \nR–≥öo ‘ÕrÊeÍgõ√Û7ø\0PK{nS÷œ\0\0_2\0\0PK\0\0\0≤nFI{nS÷œ\0\0_2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ResourceContentsPK\0\0\0\0\0\0>\0\0\0\r\0\0\0\0');
/*!40000 ALTER TABLE `CDO_PACKAGE_UNITS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CDO_PROPERTIES`
--

DROP TABLE IF EXISTS `CDO_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDO_PROPERTIES` (
  `NAME` longtext NOT NULL,
  `VALUE` mediumtext,
  PRIMARY KEY (`NAME`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CDO_PROPERTIES`
--

LOCK TABLES `CDO_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `CDO_PROPERTIES` DISABLE KEYS */;
INSERT INTO `CDO_PROPERTIES` VALUES ('org.eclipse.emf.cdo.server.db.repositoryCreated','1475761980440'),('org.eclipse.emf.cdo.server.db.schemaVersion','4');
/*!40000 ALTER TABLE `CDO_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eannotation`
--

DROP TABLE IF EXISTS `ecore_eannotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eannotation` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `SOURCE` longtext,
  `DETAILS` int(11) DEFAULT NULL,
  `EMODELELEMENT` bigint(20) DEFAULT NULL,
  `CONTENTS` int(11) DEFAULT NULL,
  `REFERENCES0` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981018_32` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eannotation`
--

LOCK TABLES `ecore_eannotation` WRITE;
/*!40000 ALTER TABLE `ecore_eannotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eannotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eannotation_contents_list`
--

DROP TABLE IF EXISTS `ecore_eannotation_contents_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eannotation_contents_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eannotation_contents_list`
--

LOCK TABLES `ecore_eannotation_contents_list` WRITE;
/*!40000 ALTER TABLE `ecore_eannotation_contents_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eannotation_contents_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eannotation_details_list`
--

DROP TABLE IF EXISTS `ecore_eannotation_details_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eannotation_details_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eannotation_details_list`
--

LOCK TABLES `ecore_eannotation_details_list` WRITE;
/*!40000 ALTER TABLE `ecore_eannotation_details_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eannotation_details_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eannotation_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_eannotation_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eannotation_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eannotation_eannotations_list`
--

LOCK TABLES `ecore_eannotation_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eannotation_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eannotation_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eannotation_references_list`
--

DROP TABLE IF EXISTS `ecore_eannotation_references_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eannotation_references_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eannotation_references_list`
--

LOCK TABLES `ecore_eannotation_references_list` WRITE;
/*!40000 ALTER TABLE `ecore_eannotation_references_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eannotation_references_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eattribute`
--

DROP TABLE IF EXISTS `ecore_eattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eattribute` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `ORDERED` tinyint(1) DEFAULT NULL,
  `UNIQUE0` tinyint(1) DEFAULT NULL,
  `LOWERBOUND` int(11) DEFAULT NULL,
  `UPPERBOUND` int(11) DEFAULT NULL,
  `EGENERICTYPE` bigint(20) DEFAULT NULL,
  `CHANGEABLE` tinyint(1) DEFAULT NULL,
  `VOLATILE` tinyint(1) DEFAULT NULL,
  `TRANSIENT` tinyint(1) DEFAULT NULL,
  `DEFAULTVALUELITERAL` longtext,
  `UNSETTABLE` tinyint(1) DEFAULT NULL,
  `DERIVED` tinyint(1) DEFAULT NULL,
  `ECONTAININGCLASS` bigint(20) DEFAULT NULL,
  `ID` tinyint(1) DEFAULT NULL,
  `CDO_SET_EGENERICTYPE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981001_29` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eattribute`
--

LOCK TABLES `ecore_eattribute` WRITE;
/*!40000 ALTER TABLE `ecore_eattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eattribute_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_eattribute_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eattribute_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eattribute_eannotations_list`
--

LOCK TABLES `ecore_eattribute_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eattribute_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eattribute_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eclass`
--

DROP TABLE IF EXISTS `ecore_eclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eclass` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `INSTANCETYPENAME` longtext,
  `EPACKAGE` bigint(20) DEFAULT NULL,
  `ETYPEPARAMETERS` int(11) DEFAULT NULL,
  `ABSTRACT` tinyint(1) DEFAULT NULL,
  `INTERFACE` tinyint(1) DEFAULT NULL,
  `EOPERATIONS` int(11) DEFAULT NULL,
  `ESTRUCTURALFEATURES` int(11) DEFAULT NULL,
  `EGENERICSUPERTYPES` int(11) DEFAULT NULL,
  `CDO_SET_INSTANCETYPENAME` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981023_38` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eclass`
--

LOCK TABLES `ecore_eclass` WRITE;
/*!40000 ALTER TABLE `ecore_eclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eclass_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_eclass_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eclass_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eclass_eannotations_list`
--

LOCK TABLES `ecore_eclass_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eclass_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eclass_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eclass_egenericsupertypes_list`
--

DROP TABLE IF EXISTS `ecore_eclass_egenericsupertypes_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eclass_egenericsupertypes_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eclass_egenericsupertypes_list`
--

LOCK TABLES `ecore_eclass_egenericsupertypes_list` WRITE;
/*!40000 ALTER TABLE `ecore_eclass_egenericsupertypes_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eclass_egenericsupertypes_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eclass_eoperations_list`
--

DROP TABLE IF EXISTS `ecore_eclass_eoperations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eclass_eoperations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eclass_eoperations_list`
--

LOCK TABLES `ecore_eclass_eoperations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eclass_eoperations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eclass_eoperations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eclass_estructuralfeatures_list`
--

DROP TABLE IF EXISTS `ecore_eclass_estructuralfeatures_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eclass_estructuralfeatures_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eclass_estructuralfeatures_list`
--

LOCK TABLES `ecore_eclass_estructuralfeatures_list` WRITE;
/*!40000 ALTER TABLE `ecore_eclass_estructuralfeatures_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eclass_estructuralfeatures_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eclass_etypeparameters_list`
--

DROP TABLE IF EXISTS `ecore_eclass_etypeparameters_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eclass_etypeparameters_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eclass_etypeparameters_list`
--

LOCK TABLES `ecore_eclass_etypeparameters_list` WRITE;
/*!40000 ALTER TABLE `ecore_eclass_etypeparameters_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eclass_etypeparameters_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_edatatype`
--

DROP TABLE IF EXISTS `ecore_edatatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_edatatype` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `INSTANCETYPENAME` longtext,
  `EPACKAGE` bigint(20) DEFAULT NULL,
  `ETYPEPARAMETERS` int(11) DEFAULT NULL,
  `SERIALIZABLE` tinyint(1) DEFAULT NULL,
  `CDO_SET_INSTANCETYPENAME` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981031_45` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_edatatype`
--

LOCK TABLES `ecore_edatatype` WRITE;
/*!40000 ALTER TABLE `ecore_edatatype` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_edatatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_edatatype_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_edatatype_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_edatatype_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_edatatype_eannotations_list`
--

LOCK TABLES `ecore_edatatype_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_edatatype_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_edatatype_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_edatatype_etypeparameters_list`
--

DROP TABLE IF EXISTS `ecore_edatatype_etypeparameters_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_edatatype_etypeparameters_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_edatatype_etypeparameters_list`
--

LOCK TABLES `ecore_edatatype_etypeparameters_list` WRITE;
/*!40000 ALTER TABLE `ecore_edatatype_etypeparameters_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_edatatype_etypeparameters_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eenum`
--

DROP TABLE IF EXISTS `ecore_eenum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eenum` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `INSTANCETYPENAME` longtext,
  `EPACKAGE` bigint(20) DEFAULT NULL,
  `ETYPEPARAMETERS` int(11) DEFAULT NULL,
  `SERIALIZABLE` tinyint(1) DEFAULT NULL,
  `ELITERALS` int(11) DEFAULT NULL,
  `CDO_SET_INSTANCETYPENAME` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981034_49` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eenum`
--

LOCK TABLES `ecore_eenum` WRITE;
/*!40000 ALTER TABLE `ecore_eenum` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eenum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eenum_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_eenum_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eenum_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eenum_eannotations_list`
--

LOCK TABLES `ecore_eenum_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eenum_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eenum_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eenum_eliterals_list`
--

DROP TABLE IF EXISTS `ecore_eenum_eliterals_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eenum_eliterals_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eenum_eliterals_list`
--

LOCK TABLES `ecore_eenum_eliterals_list` WRITE;
/*!40000 ALTER TABLE `ecore_eenum_eliterals_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eenum_eliterals_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eenum_etypeparameters_list`
--

DROP TABLE IF EXISTS `ecore_eenum_etypeparameters_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eenum_etypeparameters_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eenum_etypeparameters_list`
--

LOCK TABLES `ecore_eenum_etypeparameters_list` WRITE;
/*!40000 ALTER TABLE `ecore_eenum_etypeparameters_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eenum_etypeparameters_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eenumliteral`
--

DROP TABLE IF EXISTS `ecore_eenumliteral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eenumliteral` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `VALUE` int(11) DEFAULT NULL,
  `LITERAL` longtext,
  `EENUM` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981036_54` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eenumliteral`
--

LOCK TABLES `ecore_eenumliteral` WRITE;
/*!40000 ALTER TABLE `ecore_eenumliteral` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eenumliteral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eenumliteral_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_eenumliteral_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eenumliteral_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eenumliteral_eannotations_list`
--

LOCK TABLES `ecore_eenumliteral_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eenumliteral_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eenumliteral_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_efactory`
--

DROP TABLE IF EXISTS `ecore_efactory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_efactory` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981040_57` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_efactory`
--

LOCK TABLES `ecore_efactory` WRITE;
/*!40000 ALTER TABLE `ecore_efactory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_efactory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_efactory_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_efactory_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_efactory_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_efactory_eannotations_list`
--

LOCK TABLES `ecore_efactory_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_efactory_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_efactory_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_egenerictype`
--

DROP TABLE IF EXISTS `ecore_egenerictype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_egenerictype` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EUPPERBOUND` bigint(20) DEFAULT NULL,
  `ETYPEARGUMENTS` int(11) DEFAULT NULL,
  `ELOWERBOUND` bigint(20) DEFAULT NULL,
  `ETYPEPARAMETER` bigint(20) DEFAULT NULL,
  `ECLASSIFIER` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981063_82` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_egenerictype`
--

LOCK TABLES `ecore_egenerictype` WRITE;
/*!40000 ALTER TABLE `ecore_egenerictype` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_egenerictype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_egenerictype_etypearguments_list`
--

DROP TABLE IF EXISTS `ecore_egenerictype_etypearguments_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_egenerictype_etypearguments_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_egenerictype_etypearguments_list`
--

LOCK TABLES `ecore_egenerictype_etypearguments_list` WRITE;
/*!40000 ALTER TABLE `ecore_egenerictype_etypearguments_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_egenerictype_etypearguments_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eobject`
--

DROP TABLE IF EXISTS `ecore_eobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eobject` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981041_60` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eobject`
--

LOCK TABLES `ecore_eobject` WRITE;
/*!40000 ALTER TABLE `ecore_eobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eoperation`
--

DROP TABLE IF EXISTS `ecore_eoperation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eoperation` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `ORDERED` tinyint(1) DEFAULT NULL,
  `UNIQUE0` tinyint(1) DEFAULT NULL,
  `LOWERBOUND` int(11) DEFAULT NULL,
  `UPPERBOUND` int(11) DEFAULT NULL,
  `EGENERICTYPE` bigint(20) DEFAULT NULL,
  `ECONTAININGCLASS` bigint(20) DEFAULT NULL,
  `ETYPEPARAMETERS` int(11) DEFAULT NULL,
  `EPARAMETERS` int(11) DEFAULT NULL,
  `EGENERICEXCEPTIONS` int(11) DEFAULT NULL,
  `CDO_SET_EGENERICTYPE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981042_62` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eoperation`
--

LOCK TABLES `ecore_eoperation` WRITE;
/*!40000 ALTER TABLE `ecore_eoperation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eoperation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eoperation_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_eoperation_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eoperation_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eoperation_eannotations_list`
--

LOCK TABLES `ecore_eoperation_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eoperation_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eoperation_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eoperation_egenericexceptions_list`
--

DROP TABLE IF EXISTS `ecore_eoperation_egenericexceptions_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eoperation_egenericexceptions_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eoperation_egenericexceptions_list`
--

LOCK TABLES `ecore_eoperation_egenericexceptions_list` WRITE;
/*!40000 ALTER TABLE `ecore_eoperation_egenericexceptions_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eoperation_egenericexceptions_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eoperation_eparameters_list`
--

DROP TABLE IF EXISTS `ecore_eoperation_eparameters_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eoperation_eparameters_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eoperation_eparameters_list`
--

LOCK TABLES `ecore_eoperation_eparameters_list` WRITE;
/*!40000 ALTER TABLE `ecore_eoperation_eparameters_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eoperation_eparameters_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eoperation_etypeparameters_list`
--

DROP TABLE IF EXISTS `ecore_eoperation_etypeparameters_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eoperation_etypeparameters_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eoperation_etypeparameters_list`
--

LOCK TABLES `ecore_eoperation_etypeparameters_list` WRITE;
/*!40000 ALTER TABLE `ecore_eoperation_etypeparameters_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eoperation_etypeparameters_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_epackage`
--

DROP TABLE IF EXISTS `ecore_epackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_epackage` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `NSURI` longtext,
  `NSPREFIX` longtext,
  `ECLASSIFIERS` int(11) DEFAULT NULL,
  `ESUBPACKAGES` int(11) DEFAULT NULL,
  `ESUPERPACKAGE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981047_68` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_epackage`
--

LOCK TABLES `ecore_epackage` WRITE;
/*!40000 ALTER TABLE `ecore_epackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_epackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_epackage_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_epackage_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_epackage_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_epackage_eannotations_list`
--

LOCK TABLES `ecore_epackage_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_epackage_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_epackage_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_epackage_eclassifiers_list`
--

DROP TABLE IF EXISTS `ecore_epackage_eclassifiers_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_epackage_eclassifiers_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_epackage_eclassifiers_list`
--

LOCK TABLES `ecore_epackage_eclassifiers_list` WRITE;
/*!40000 ALTER TABLE `ecore_epackage_eclassifiers_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_epackage_eclassifiers_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_epackage_esubpackages_list`
--

DROP TABLE IF EXISTS `ecore_epackage_esubpackages_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_epackage_esubpackages_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_epackage_esubpackages_list`
--

LOCK TABLES `ecore_epackage_esubpackages_list` WRITE;
/*!40000 ALTER TABLE `ecore_epackage_esubpackages_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_epackage_esubpackages_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eparameter`
--

DROP TABLE IF EXISTS `ecore_eparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eparameter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `ORDERED` tinyint(1) DEFAULT NULL,
  `UNIQUE0` tinyint(1) DEFAULT NULL,
  `LOWERBOUND` int(11) DEFAULT NULL,
  `UPPERBOUND` int(11) DEFAULT NULL,
  `EGENERICTYPE` bigint(20) DEFAULT NULL,
  `EOPERATION` bigint(20) DEFAULT NULL,
  `CDO_SET_EGENERICTYPE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981052_73` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eparameter`
--

LOCK TABLES `ecore_eparameter` WRITE;
/*!40000 ALTER TABLE `ecore_eparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_eparameter_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_eparameter_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_eparameter_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_eparameter_eannotations_list`
--

LOCK TABLES `ecore_eparameter_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_eparameter_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_eparameter_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_ereference`
--

DROP TABLE IF EXISTS `ecore_ereference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_ereference` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `ORDERED` tinyint(1) DEFAULT NULL,
  `UNIQUE0` tinyint(1) DEFAULT NULL,
  `LOWERBOUND` int(11) DEFAULT NULL,
  `UPPERBOUND` int(11) DEFAULT NULL,
  `EGENERICTYPE` bigint(20) DEFAULT NULL,
  `CHANGEABLE` tinyint(1) DEFAULT NULL,
  `VOLATILE` tinyint(1) DEFAULT NULL,
  `TRANSIENT` tinyint(1) DEFAULT NULL,
  `DEFAULTVALUELITERAL` longtext,
  `UNSETTABLE` tinyint(1) DEFAULT NULL,
  `DERIVED` tinyint(1) DEFAULT NULL,
  `ECONTAININGCLASS` bigint(20) DEFAULT NULL,
  `CONTAINMENT` tinyint(1) DEFAULT NULL,
  `RESOLVEPROXIES` tinyint(1) DEFAULT NULL,
  `EOPPOSITE` bigint(20) DEFAULT NULL,
  `EKEYS` int(11) DEFAULT NULL,
  `CDO_SET_EGENERICTYPE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981054_76` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_ereference`
--

LOCK TABLES `ecore_ereference` WRITE;
/*!40000 ALTER TABLE `ecore_ereference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_ereference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_ereference_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_ereference_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_ereference_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_ereference_eannotations_list`
--

LOCK TABLES `ecore_ereference_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_ereference_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_ereference_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_ereference_ekeys_list`
--

DROP TABLE IF EXISTS `ecore_ereference_ekeys_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_ereference_ekeys_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_ereference_ekeys_list`
--

LOCK TABLES `ecore_ereference_ekeys_list` WRITE;
/*!40000 ALTER TABLE `ecore_ereference_ekeys_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_ereference_ekeys_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_estringtostringmapentry`
--

DROP TABLE IF EXISTS `ecore_estringtostringmapentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_estringtostringmapentry` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `KEY0` longtext,
  `VALUE` longtext,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981060_80` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_estringtostringmapentry`
--

LOCK TABLES `ecore_estringtostringmapentry` WRITE;
/*!40000 ALTER TABLE `ecore_estringtostringmapentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_estringtostringmapentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_etypeparameter`
--

DROP TABLE IF EXISTS `ecore_etypeparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_etypeparameter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EANNOTATIONS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `EBOUNDS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981067_85` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_etypeparameter`
--

LOCK TABLES `ecore_etypeparameter` WRITE;
/*!40000 ALTER TABLE `ecore_etypeparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_etypeparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_etypeparameter_eannotations_list`
--

DROP TABLE IF EXISTS `ecore_etypeparameter_eannotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_etypeparameter_eannotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_etypeparameter_eannotations_list`
--

LOCK TABLES `ecore_etypeparameter_eannotations_list` WRITE;
/*!40000 ALTER TABLE `ecore_etypeparameter_eannotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_etypeparameter_eannotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecore_etypeparameter_ebounds_list`
--

DROP TABLE IF EXISTS `ecore_etypeparameter_ebounds_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecore_etypeparameter_ebounds_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecore_etypeparameter_ebounds_list`
--

LOCK TABLES `ecore_etypeparameter_ebounds_list` WRITE;
/*!40000 ALTER TABLE `ecore_etypeparameter_ebounds_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecore_etypeparameter_ebounds_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eresource_cdobinaryresource`
--

DROP TABLE IF EXISTS `eresource_cdobinaryresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eresource_cdobinaryresource` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `FOLDER` bigint(20) DEFAULT NULL,
  `NAME` longtext,
  `CONTENTS` longtext,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761980996_25` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eresource_cdobinaryresource`
--

LOCK TABLES `eresource_cdobinaryresource` WRITE;
/*!40000 ALTER TABLE `eresource_cdobinaryresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `eresource_cdobinaryresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eresource_cdoresource`
--

DROP TABLE IF EXISTS `eresource_cdoresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eresource_cdoresource` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `FOLDER` bigint(20) DEFAULT NULL,
  `NAME` longtext,
  `CONTENTS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761980994_22` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eresource_cdoresource`
--

LOCK TABLES `eresource_cdoresource` WRITE;
/*!40000 ALTER TABLE `eresource_cdoresource` DISABLE KEYS */;
INSERT INTO `eresource_cdoresource` VALUES (1,6,1475762821258,0,1,0,0,NULL,NULL,2),(2,1,1475762016454,0,1,0,0,NULL,'security',1);
/*!40000 ALTER TABLE `eresource_cdoresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eresource_cdoresource_contents_list`
--

DROP TABLE IF EXISTS `eresource_cdoresource_contents_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eresource_cdoresource_contents_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eresource_cdoresource_contents_list`
--

LOCK TABLES `eresource_cdoresource_contents_list` WRITE;
/*!40000 ALTER TABLE `eresource_cdoresource_contents_list` DISABLE KEYS */;
INSERT INTO `eresource_cdoresource_contents_list` VALUES (1,0,2),(1,1,33),(2,0,3);
/*!40000 ALTER TABLE `eresource_cdoresource_contents_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eresource_cdoresourcefolder`
--

DROP TABLE IF EXISTS `eresource_cdoresourcefolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eresource_cdoresourcefolder` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `FOLDER` bigint(20) DEFAULT NULL,
  `NAME` longtext,
  `NODES` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761980960_19` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eresource_cdoresourcefolder`
--

LOCK TABLES `eresource_cdoresourcefolder` WRITE;
/*!40000 ALTER TABLE `eresource_cdoresourcefolder` DISABLE KEYS */;
INSERT INTO `eresource_cdoresourcefolder` VALUES (33,2,1475762180661,0,1,0,0,NULL,'home',4),(34,1,1475762058177,0,0,33,0,NULL,'Administrator',0),(38,1,1475762180661,0,0,33,0,NULL,'CactoScale',0),(39,1,1475762180661,0,0,33,0,NULL,'CactoOpt',0),(40,1,1475762180661,0,0,33,0,NULL,'CactoSim',0);
/*!40000 ALTER TABLE `eresource_cdoresourcefolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eresource_cdoresourcefolder_nodes_list`
--

DROP TABLE IF EXISTS `eresource_cdoresourcefolder_nodes_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eresource_cdoresourcefolder_nodes_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eresource_cdoresourcefolder_nodes_list`
--

LOCK TABLES `eresource_cdoresourcefolder_nodes_list` WRITE;
/*!40000 ALTER TABLE `eresource_cdoresourcefolder_nodes_list` DISABLE KEYS */;
INSERT INTO `eresource_cdoresourcefolder_nodes_list` VALUES (33,0,34),(33,1,38),(33,2,39),(33,3,40);
/*!40000 ALTER TABLE `eresource_cdoresourcefolder_nodes_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eresource_cdotextresource`
--

DROP TABLE IF EXISTS `eresource_cdotextresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eresource_cdotextresource` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `FOLDER` bigint(20) DEFAULT NULL,
  `NAME` longtext,
  `CONTENTS` longtext,
  `ENCODING` longtext,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761980998_27` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eresource_cdotextresource`
--

LOCK TABLES `eresource_cdotextresource` WRITE;
/*!40000 ALTER TABLE `eresource_cdotextresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `eresource_cdotextresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etypes_annotation`
--

DROP TABLE IF EXISTS `etypes_annotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etypes_annotation` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ANNOTATIONS` int(11) DEFAULT NULL,
  `SOURCE` longtext,
  `DETAILS` int(11) DEFAULT NULL,
  `MODELELEMENT` bigint(20) DEFAULT NULL,
  `CONTENTS` int(11) DEFAULT NULL,
  `REFERENCES0` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475761981069_89` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etypes_annotation`
--

LOCK TABLES `etypes_annotation` WRITE;
/*!40000 ALTER TABLE `etypes_annotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `etypes_annotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etypes_annotation_annotations_list`
--

DROP TABLE IF EXISTS `etypes_annotation_annotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etypes_annotation_annotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etypes_annotation_annotations_list`
--

LOCK TABLES `etypes_annotation_annotations_list` WRITE;
/*!40000 ALTER TABLE `etypes_annotation_annotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `etypes_annotation_annotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etypes_annotation_contents_list`
--

DROP TABLE IF EXISTS `etypes_annotation_contents_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etypes_annotation_contents_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etypes_annotation_contents_list`
--

LOCK TABLES `etypes_annotation_contents_list` WRITE;
/*!40000 ALTER TABLE `etypes_annotation_contents_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `etypes_annotation_contents_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etypes_annotation_details_list`
--

DROP TABLE IF EXISTS `etypes_annotation_details_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etypes_annotation_details_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etypes_annotation_details_list`
--

LOCK TABLES `etypes_annotation_details_list` WRITE;
/*!40000 ALTER TABLE `etypes_annotation_details_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `etypes_annotation_details_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etypes_annotation_references_list`
--

DROP TABLE IF EXISTS `etypes_annotation_references_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etypes_annotation_references_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etypes_annotation_references_list`
--

LOCK TABLES `etypes_annotation_references_list` WRITE;
/*!40000 ALTER TABLE `etypes_annotation_references_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `etypes_annotation_references_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_booleanvalue`
--

DROP TABLE IF EXISTS `expressions_booleanvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_booleanvalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016551_150` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_booleanvalue`
--

LOCK TABLES `expressions_booleanvalue` WRITE;
/*!40000 ALTER TABLE `expressions_booleanvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_booleanvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_bytevalue`
--

DROP TABLE IF EXISTS `expressions_bytevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_bytevalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016553_152` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_bytevalue`
--

LOCK TABLES `expressions_bytevalue` WRITE;
/*!40000 ALTER TABLE `expressions_bytevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_bytevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_charvalue`
--

DROP TABLE IF EXISTS `expressions_charvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_charvalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` char(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016563_164` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_charvalue`
--

LOCK TABLES `expressions_charvalue` WRITE;
/*!40000 ALTER TABLE `expressions_charvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_charvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_containedobject`
--

DROP TABLE IF EXISTS `expressions_containedobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_containedobject` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `OBJECT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016574_180` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_containedobject`
--

LOCK TABLES `expressions_containedobject` WRITE;
/*!40000 ALTER TABLE `expressions_containedobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_containedobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_contextaccess`
--

DROP TABLE IF EXISTS `expressions_contextaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_contextaccess` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `NAME` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016573_178` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_contextaccess`
--

LOCK TABLES `expressions_contextaccess` WRITE;
/*!40000 ALTER TABLE `expressions_contextaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_contextaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_doublevalue`
--

DROP TABLE IF EXISTS `expressions_doublevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_doublevalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` double DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016561_162` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_doublevalue`
--

LOCK TABLES `expressions_doublevalue` WRITE;
/*!40000 ALTER TABLE `expressions_doublevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_doublevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_floatvalue`
--

DROP TABLE IF EXISTS `expressions_floatvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_floatvalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` float DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016559_160` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_floatvalue`
--

LOCK TABLES `expressions_floatvalue` WRITE;
/*!40000 ALTER TABLE `expressions_floatvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_floatvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_functioninvocation`
--

DROP TABLE IF EXISTS `expressions_functioninvocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_functioninvocation` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ARGUMENTS` int(11) DEFAULT NULL,
  `NAME` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016566_168` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_functioninvocation`
--

LOCK TABLES `expressions_functioninvocation` WRITE;
/*!40000 ALTER TABLE `expressions_functioninvocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_functioninvocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_functioninvocation_arguments_list`
--

DROP TABLE IF EXISTS `expressions_functioninvocation_arguments_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_functioninvocation_arguments_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_functioninvocation_arguments_list`
--

LOCK TABLES `expressions_functioninvocation_arguments_list` WRITE;
/*!40000 ALTER TABLE `expressions_functioninvocation_arguments_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_functioninvocation_arguments_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_intvalue`
--

DROP TABLE IF EXISTS `expressions_intvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_intvalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016556_156` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_intvalue`
--

LOCK TABLES `expressions_intvalue` WRITE;
/*!40000 ALTER TABLE `expressions_intvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_intvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_linkedexpression`
--

DROP TABLE IF EXISTS `expressions_linkedexpression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_linkedexpression` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EXPRESSION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016576_184` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_linkedexpression`
--

LOCK TABLES `expressions_linkedexpression` WRITE;
/*!40000 ALTER TABLE `expressions_linkedexpression` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_linkedexpression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_linkedobject`
--

DROP TABLE IF EXISTS `expressions_linkedobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_linkedobject` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `OBJECT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016575_182` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_linkedobject`
--

LOCK TABLES `expressions_linkedobject` WRITE;
/*!40000 ALTER TABLE `expressions_linkedobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_linkedobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_listconstruction`
--

DROP TABLE IF EXISTS `expressions_listconstruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_listconstruction` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ELEMENTS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016578_186` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_listconstruction`
--

LOCK TABLES `expressions_listconstruction` WRITE;
/*!40000 ALTER TABLE `expressions_listconstruction` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_listconstruction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_listconstruction_elements_list`
--

DROP TABLE IF EXISTS `expressions_listconstruction_elements_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_listconstruction_elements_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_listconstruction_elements_list`
--

LOCK TABLES `expressions_listconstruction_elements_list` WRITE;
/*!40000 ALTER TABLE `expressions_listconstruction_elements_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_listconstruction_elements_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_longvalue`
--

DROP TABLE IF EXISTS `expressions_longvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_longvalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016558_158` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_longvalue`
--

LOCK TABLES `expressions_longvalue` WRITE;
/*!40000 ALTER TABLE `expressions_longvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_longvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_memberaccess`
--

DROP TABLE IF EXISTS `expressions_memberaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_memberaccess` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `NAME` bigint(20) DEFAULT NULL,
  `OBJECT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016571_176` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_memberaccess`
--

LOCK TABLES `expressions_memberaccess` WRITE;
/*!40000 ALTER TABLE `expressions_memberaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_memberaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_memberinvocation`
--

DROP TABLE IF EXISTS `expressions_memberinvocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_memberinvocation` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ARGUMENTS` int(11) DEFAULT NULL,
  `NAME` bigint(20) DEFAULT NULL,
  `OBJECT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016568_171` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_memberinvocation`
--

LOCK TABLES `expressions_memberinvocation` WRITE;
/*!40000 ALTER TABLE `expressions_memberinvocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_memberinvocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_memberinvocation_arguments_list`
--

DROP TABLE IF EXISTS `expressions_memberinvocation_arguments_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_memberinvocation_arguments_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_memberinvocation_arguments_list`
--

LOCK TABLES `expressions_memberinvocation_arguments_list` WRITE;
/*!40000 ALTER TABLE `expressions_memberinvocation_arguments_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_memberinvocation_arguments_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_shortvalue`
--

DROP TABLE IF EXISTS `expressions_shortvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_shortvalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016555_154` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_shortvalue`
--

LOCK TABLES `expressions_shortvalue` WRITE;
/*!40000 ALTER TABLE `expressions_shortvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_shortvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_staticaccess`
--

DROP TABLE IF EXISTS `expressions_staticaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_staticaccess` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `NAME` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016570_174` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_staticaccess`
--

LOCK TABLES `expressions_staticaccess` WRITE;
/*!40000 ALTER TABLE `expressions_staticaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_staticaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressions_stringvalue`
--

DROP TABLE IF EXISTS `expressions_stringvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions_stringvalue` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `LITERAL` longtext,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016564_166` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressions_stringvalue`
--

LOCK TABLES `expressions_stringvalue` WRITE;
/*!40000 ALTER TABLE `expressions_stringvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressions_stringvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_andfilter`
--

DROP TABLE IF EXISTS `security_andfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_andfilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `OPERANDS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016549_144` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_andfilter`
--

LOCK TABLES `security_andfilter` WRITE;
/*!40000 ALTER TABLE `security_andfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_andfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_andfilter_operands_list`
--

DROP TABLE IF EXISTS `security_andfilter_operands_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_andfilter_operands_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_andfilter_operands_list`
--

LOCK TABLES `security_andfilter_operands_list` WRITE;
/*!40000 ALTER TABLE `security_andfilter_operands_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_andfilter_operands_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_classfilter`
--

DROP TABLE IF EXISTS `security_classfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_classfilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `APPLICABLECLASS` bigint(20) DEFAULT NULL,
  `SUBTYPES` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016536_135` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_classfilter`
--

LOCK TABLES `security_classfilter` WRITE;
/*!40000 ALTER TABLE `security_classfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_classfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_classpermission`
--

DROP TABLE IF EXISTS `security_classpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_classpermission` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ROLE` bigint(20) DEFAULT NULL,
  `ACCESS` int(11) DEFAULT NULL,
  `APPLICABLECLASS` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016525_122` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_classpermission`
--

LOCK TABLES `security_classpermission` WRITE;
/*!40000 ALTER TABLE `security_classpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_classpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_directory`
--

DROP TABLE IF EXISTS `security_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_directory` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ANNOTATIONS` int(11) DEFAULT NULL,
  `ITEMS` int(11) DEFAULT NULL,
  `NAME` longtext,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016504_99` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_directory`
--

LOCK TABLES `security_directory` WRITE;
/*!40000 ALTER TABLE `security_directory` DISABLE KEYS */;
INSERT INTO `security_directory` VALUES (4,3,1475762357284,0,0,3,-2,0,7,'Roles'),(22,1,1475762016454,0,0,3,-2,0,2,'Groups'),(25,2,1475762180567,0,0,3,-2,0,4,'Users');
/*!40000 ALTER TABLE `security_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_directory_annotations_list`
--

DROP TABLE IF EXISTS `security_directory_annotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_directory_annotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_directory_annotations_list`
--

LOCK TABLES `security_directory_annotations_list` WRITE;
/*!40000 ALTER TABLE `security_directory_annotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_directory_annotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_directory_items_list`
--

DROP TABLE IF EXISTS `security_directory_items_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_directory_items_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_directory_items_list`
--

LOCK TABLES `security_directory_items_list` WRITE;
/*!40000 ALTER TABLE `security_directory_items_list` DISABLE KEYS */;
INSERT INTO `security_directory_items_list` VALUES (4,0,5),(4,1,8),(4,2,11),(4,3,14),(4,4,17),(4,5,28),(4,6,45),(22,0,23),(22,1,24),(25,0,26),(25,1,35),(25,2,36),(25,3,37);
/*!40000 ALTER TABLE `security_directory_items_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_expressionfilter`
--

DROP TABLE IF EXISTS `security_expressionfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_expressionfilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `EXPRESSION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016546_139` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_expressionfilter`
--

LOCK TABLES `security_expressionfilter` WRITE;
/*!40000 ALTER TABLE `security_expressionfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_expressionfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_filterpermission`
--

DROP TABLE IF EXISTS `security_filterpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_filterpermission` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ROLE` bigint(20) DEFAULT NULL,
  `ACCESS` int(11) DEFAULT NULL,
  `FILTERS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016532_128` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_filterpermission`
--

LOCK TABLES `security_filterpermission` WRITE;
/*!40000 ALTER TABLE `security_filterpermission` DISABLE KEYS */;
INSERT INTO `security_filterpermission` VALUES (6,1,1475762016454,0,0,5,0,NULL,0,1),(9,1,1475762016454,0,0,8,0,NULL,1,1),(12,1,1475762016454,0,0,11,0,NULL,0,1),(15,1,1475762016454,0,0,14,0,NULL,1,1),(18,1,1475762016454,0,0,17,0,NULL,1,1),(20,1,1475762016454,0,0,17,0,NULL,0,1),(29,1,1475762058177,0,0,28,0,NULL,1,1),(31,1,1475762058177,0,0,28,0,NULL,0,1),(46,1,1475762357284,0,0,45,0,NULL,1,1),(48,1,1475762357284,0,0,45,0,NULL,1,1);
/*!40000 ALTER TABLE `security_filterpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_filterpermission_filters_list`
--

DROP TABLE IF EXISTS `security_filterpermission_filters_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_filterpermission_filters_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_filterpermission_filters_list`
--

LOCK TABLES `security_filterpermission_filters_list` WRITE;
/*!40000 ALTER TABLE `security_filterpermission_filters_list` DISABLE KEYS */;
INSERT INTO `security_filterpermission_filters_list` VALUES (6,0,7),(9,0,10),(12,0,13),(15,0,16),(18,0,19),(20,0,21),(29,0,30),(31,0,32),(46,0,47),(48,0,49);
/*!40000 ALTER TABLE `security_filterpermission_filters_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group`
--

DROP TABLE IF EXISTS `security_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ANNOTATIONS` int(11) DEFAULT NULL,
  `ID` longtext,
  `ROLES` int(11) DEFAULT NULL,
  `USERS` int(11) DEFAULT NULL,
  `INHERITEDGROUPS` int(11) DEFAULT NULL,
  `INHERITINGGROUPS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016510_108` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group`
--

LOCK TABLES `security_group` WRITE;
/*!40000 ALTER TABLE `security_group` DISABLE KEYS */;
INSERT INTO `security_group` VALUES (23,1,1475762016454,0,0,22,-2,0,'Administrators',1,1,0,0),(24,1,1475762016454,0,0,22,-2,0,'Users',0,0,0,0);
/*!40000 ALTER TABLE `security_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_annotations_list`
--

DROP TABLE IF EXISTS `security_group_annotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_annotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_annotations_list`
--

LOCK TABLES `security_group_annotations_list` WRITE;
/*!40000 ALTER TABLE `security_group_annotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_group_annotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_inheritedgroups_list`
--

DROP TABLE IF EXISTS `security_group_inheritedgroups_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_inheritedgroups_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_inheritedgroups_list`
--

LOCK TABLES `security_group_inheritedgroups_list` WRITE;
/*!40000 ALTER TABLE `security_group_inheritedgroups_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_group_inheritedgroups_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_inheritinggroups_list`
--

DROP TABLE IF EXISTS `security_group_inheritinggroups_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_inheritinggroups_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_inheritinggroups_list`
--

LOCK TABLES `security_group_inheritinggroups_list` WRITE;
/*!40000 ALTER TABLE `security_group_inheritinggroups_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_group_inheritinggroups_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_roles_list`
--

DROP TABLE IF EXISTS `security_group_roles_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_roles_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_roles_list`
--

LOCK TABLES `security_group_roles_list` WRITE;
/*!40000 ALTER TABLE `security_group_roles_list` DISABLE KEYS */;
INSERT INTO `security_group_roles_list` VALUES (23,0,17);
/*!40000 ALTER TABLE `security_group_roles_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_users_list`
--

DROP TABLE IF EXISTS `security_group_users_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_users_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_users_list`
--

LOCK TABLES `security_group_users_list` WRITE;
/*!40000 ALTER TABLE `security_group_users_list` DISABLE KEYS */;
INSERT INTO `security_group_users_list` VALUES (23,0,26);
/*!40000 ALTER TABLE `security_group_users_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_linkedfilter`
--

DROP TABLE IF EXISTS `security_linkedfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_linkedfilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `FILTER` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016533_131` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_linkedfilter`
--

LOCK TABLES `security_linkedfilter` WRITE;
/*!40000 ALTER TABLE `security_linkedfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_linkedfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_notfilter`
--

DROP TABLE IF EXISTS `security_notfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_notfilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `OPERANDS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016548_141` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_notfilter`
--

LOCK TABLES `security_notfilter` WRITE;
/*!40000 ALTER TABLE `security_notfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_notfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_notfilter_operands_list`
--

DROP TABLE IF EXISTS `security_notfilter_operands_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_notfilter_operands_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_notfilter_operands_list`
--

LOCK TABLES `security_notfilter_operands_list` WRITE;
/*!40000 ALTER TABLE `security_notfilter_operands_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_notfilter_operands_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_orfilter`
--

DROP TABLE IF EXISTS `security_orfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_orfilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `OPERANDS` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016550_147` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_orfilter`
--

LOCK TABLES `security_orfilter` WRITE;
/*!40000 ALTER TABLE `security_orfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_orfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_orfilter_operands_list`
--

DROP TABLE IF EXISTS `security_orfilter_operands_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_orfilter_operands_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_orfilter_operands_list`
--

LOCK TABLES `security_orfilter_operands_list` WRITE;
/*!40000 ALTER TABLE `security_orfilter_operands_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_orfilter_operands_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_packagefilter`
--

DROP TABLE IF EXISTS `security_packagefilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_packagefilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `APPLICABLEPACKAGE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016535_133` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_packagefilter`
--

LOCK TABLES `security_packagefilter` WRITE;
/*!40000 ALTER TABLE `security_packagefilter` DISABLE KEYS */;
INSERT INTO `security_packagefilter` VALUES (13,1,1475762016454,0,0,12,-3,-188),(16,1,1475762016454,0,0,15,-3,-188);
/*!40000 ALTER TABLE `security_packagefilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_packagepermission`
--

DROP TABLE IF EXISTS `security_packagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_packagepermission` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ROLE` bigint(20) DEFAULT NULL,
  `ACCESS` int(11) DEFAULT NULL,
  `APPLICABLEPACKAGE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016528_124` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_packagepermission`
--

LOCK TABLES `security_packagepermission` WRITE;
/*!40000 ALTER TABLE `security_packagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_packagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_realm`
--

DROP TABLE IF EXISTS `security_realm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_realm` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ANNOTATIONS` int(11) DEFAULT NULL,
  `ITEMS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `DEFAULTACCESS` longtext,
  `DEFAULTUSERDIRECTORY` bigint(20) DEFAULT NULL,
  `DEFAULTGROUPDIRECTORY` bigint(20) DEFAULT NULL,
  `DEFAULTROLEDIRECTORY` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016498_95` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_realm`
--

LOCK TABLES `security_realm` WRITE;
/*!40000 ALTER TABLE `security_realm` DISABLE KEYS */;
INSERT INTO `security_realm` VALUES (3,1,1475762016454,0,2,0,0,0,3,'Security Realm',NULL,25,22,4);
/*!40000 ALTER TABLE `security_realm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_realm_annotations_list`
--

DROP TABLE IF EXISTS `security_realm_annotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_realm_annotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_realm_annotations_list`
--

LOCK TABLES `security_realm_annotations_list` WRITE;
/*!40000 ALTER TABLE `security_realm_annotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_realm_annotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_realm_items_list`
--

DROP TABLE IF EXISTS `security_realm_items_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_realm_items_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_realm_items_list`
--

LOCK TABLES `security_realm_items_list` WRITE;
/*!40000 ALTER TABLE `security_realm_items_list` DISABLE KEYS */;
INSERT INTO `security_realm_items_list` VALUES (3,0,4),(3,1,22),(3,2,25);
/*!40000 ALTER TABLE `security_realm_items_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_resourcefilter`
--

DROP TABLE IF EXISTS `security_resourcefilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_resourcefilter` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `PATH` longtext,
  `PATTERNSTYLE` int(11) DEFAULT NULL,
  `FOLDERS` tinyint(1) DEFAULT NULL,
  `TEXTRESOURCES` tinyint(1) DEFAULT NULL,
  `BINARYRESOURCES` tinyint(1) DEFAULT NULL,
  `MODELRESOURCES` tinyint(1) DEFAULT NULL,
  `MODELOBJECTS` tinyint(1) DEFAULT NULL,
  `INCLUDEPARENTS` tinyint(1) DEFAULT NULL,
  `INCLUDEROOT` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016539_137` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_resourcefilter`
--

LOCK TABLES `security_resourcefilter` WRITE;
/*!40000 ALTER TABLE `security_resourcefilter` DISABLE KEYS */;
INSERT INTO `security_resourcefilter` VALUES (7,1,1475762016454,0,0,6,-3,'.*',3,1,1,1,1,1,1,1),(10,1,1475762016454,0,0,9,-3,'.*',3,1,1,1,1,1,1,1),(19,1,1475762016454,0,0,18,-3,'/security',0,1,1,1,1,1,0,1),(21,1,1475762016454,0,0,20,-3,'/security',0,1,1,1,1,1,1,1),(30,1,1475762058177,0,0,29,-3,'/home/${user}',1,1,1,1,1,1,0,1),(32,1,1475762058177,0,0,31,-3,'/home',0,1,1,1,1,1,1,1),(47,1,1475762357284,0,0,46,-3,'/uulm-testbed/plans',0,1,1,1,1,1,1,1),(49,1,1475762357284,0,0,48,-3,'/flexiant-testbed/plans',0,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `security_resourcefilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_resourcepermission`
--

DROP TABLE IF EXISTS `security_resourcepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_resourcepermission` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ROLE` bigint(20) DEFAULT NULL,
  `ACCESS` int(11) DEFAULT NULL,
  `PATTERN` longtext,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016530_126` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_resourcepermission`
--

LOCK TABLES `security_resourcepermission` WRITE;
/*!40000 ALTER TABLE `security_resourcepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_resourcepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_role`
--

DROP TABLE IF EXISTS `security_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ANNOTATIONS` int(11) DEFAULT NULL,
  `ID` longtext,
  `PERMISSIONS` int(11) DEFAULT NULL,
  `ASSIGNEES` int(11) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016506_103` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_role`
--

LOCK TABLES `security_role` WRITE;
/*!40000 ALTER TABLE `security_role` DISABLE KEYS */;
INSERT INTO `security_role` VALUES (5,7,1475762513003,0,0,4,-2,0,'All Objects Reader',1,3),(8,6,1475762513003,0,0,4,-2,0,'All Objects Writer',1,1),(11,7,1475762513003,0,0,4,-2,0,'Resource Tree Reader',1,3),(14,6,1475762513003,0,0,4,-2,0,'Resource Tree Writer',1,1),(17,1,1475762016454,0,0,4,-2,0,'Administration',2,1),(28,2,1475762180661,0,0,4,-2,0,'Home Folder /home',2,4),(45,3,1475762513003,0,0,4,-2,0,'WritePlans',2,0);
/*!40000 ALTER TABLE `security_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_role_annotations_list`
--

DROP TABLE IF EXISTS `security_role_annotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role_annotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_role_annotations_list`
--

LOCK TABLES `security_role_annotations_list` WRITE;
/*!40000 ALTER TABLE `security_role_annotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_role_annotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_role_assignees_list`
--

DROP TABLE IF EXISTS `security_role_assignees_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role_assignees_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_role_assignees_list`
--

LOCK TABLES `security_role_assignees_list` WRITE;
/*!40000 ALTER TABLE `security_role_assignees_list` DISABLE KEYS */;
INSERT INTO `security_role_assignees_list` VALUES (5,1,35),(5,2,37),(5,3,36),(8,1,35),(11,1,35),(11,2,37),(11,3,36),(14,1,35),(17,0,23),(28,0,26),(28,1,35),(28,2,36),(28,3,37);
/*!40000 ALTER TABLE `security_role_assignees_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_role_permissions_list`
--

DROP TABLE IF EXISTS `security_role_permissions_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role_permissions_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_role_permissions_list`
--

LOCK TABLES `security_role_permissions_list` WRITE;
/*!40000 ALTER TABLE `security_role_permissions_list` DISABLE KEYS */;
INSERT INTO `security_role_permissions_list` VALUES (5,0,6),(8,0,9),(11,0,12),(14,0,15),(17,0,18),(17,1,20),(28,0,29),(28,1,31),(45,0,46),(45,1,48);
/*!40000 ALTER TABLE `security_role_permissions_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_user`
--

DROP TABLE IF EXISTS `security_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_user` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ANNOTATIONS` int(11) DEFAULT NULL,
  `ID` longtext,
  `ROLES` int(11) DEFAULT NULL,
  `GROUPS` int(11) DEFAULT NULL,
  `FIRSTNAME` longtext,
  `LASTNAME` longtext,
  `EMAIL` longtext,
  `DEFAULTACCESSOVERRIDE` longtext,
  `LOCKED` tinyint(1) DEFAULT NULL,
  `PASSWORD` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016517_115` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_user`
--

LOCK TABLES `security_user` WRITE;
/*!40000 ALTER TABLE `security_user` DISABLE KEYS */;
INSERT INTO `security_user` VALUES (26,8,1475762513003,0,0,25,-2,0,'Administrator',1,1,NULL,NULL,NULL,NULL,0,50),(35,4,1475762417811,0,0,25,-2,0,'CactoScale',5,0,NULL,NULL,NULL,NULL,0,51),(36,4,1475762421864,0,0,25,-2,0,'CactoOpt',3,0,NULL,NULL,NULL,NULL,0,52),(37,4,1475762426313,0,0,25,-2,0,'CactoSim',3,0,NULL,NULL,NULL,NULL,0,53);
/*!40000 ALTER TABLE `security_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_user_annotations_list`
--

DROP TABLE IF EXISTS `security_user_annotations_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_user_annotations_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_user_annotations_list`
--

LOCK TABLES `security_user_annotations_list` WRITE;
/*!40000 ALTER TABLE `security_user_annotations_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_user_annotations_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_user_groups_list`
--

DROP TABLE IF EXISTS `security_user_groups_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_user_groups_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_user_groups_list`
--

LOCK TABLES `security_user_groups_list` WRITE;
/*!40000 ALTER TABLE `security_user_groups_list` DISABLE KEYS */;
INSERT INTO `security_user_groups_list` VALUES (26,0,23);
/*!40000 ALTER TABLE `security_user_groups_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_user_roles_list`
--

DROP TABLE IF EXISTS `security_user_roles_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_user_roles_list` (
  `CDO_SOURCE` bigint(20) NOT NULL,
  `CDO_IDX` int(11) NOT NULL,
  `CDO_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CDO_SOURCE`,`CDO_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_user_roles_list`
--

LOCK TABLES `security_user_roles_list` WRITE;
/*!40000 ALTER TABLE `security_user_roles_list` DISABLE KEYS */;
INSERT INTO `security_user_roles_list` VALUES (26,0,28),(35,0,28),(35,1,5),(35,2,8),(35,3,11),(35,4,14),(36,0,28),(36,1,5),(36,2,11),(37,0,28),(37,1,5),(37,2,11);
/*!40000 ALTER TABLE `security_user_roles_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_userpassword`
--

DROP TABLE IF EXISTS `security_userpassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_userpassword` (
  `CDO_ID` bigint(20) NOT NULL,
  `CDO_VERSION` int(11) NOT NULL,
  `CDO_CREATED` bigint(20) NOT NULL,
  `CDO_REVISED` bigint(20) NOT NULL,
  `CDO_RESOURCE` bigint(20) NOT NULL,
  `CDO_CONTAINER` bigint(20) NOT NULL,
  `CDO_FEATURE` int(11) NOT NULL,
  `ENCRYPTED` longtext,
  PRIMARY KEY (`CDO_ID`,`CDO_VERSION`),
  KEY `I1475762016523_120` (`CDO_REVISED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_userpassword`
--

LOCK TABLES `security_userpassword` WRITE;
/*!40000 ALTER TABLE `security_userpassword` DISABLE KEYS */;
INSERT INTO `security_userpassword` VALUES (50,1,1475762412403,0,0,26,-12,'Wv?@vMv5b'),(51,1,1475762417811,0,0,35,-12,'*o4ZsMhTj='),(52,1,1475762421864,0,0,36,-12,'2$TC3f@uNt'),(53,1,1475762426313,0,0,37,-12,'uk$0Q!_8rA');
/*!40000 ALTER TABLE `security_userpassword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-06 16:08:14
