Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0791D938353
	for <lists+usrp-users@lfdr.de>; Sun, 21 Jul 2024 06:09:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E15A385562
	for <lists+usrp-users@lfdr.de>; Sun, 21 Jul 2024 00:09:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721534971; bh=kECWu+DfkPjbDFTGJJGOKtlaYpDrfCz3tljOP/joApU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t+KKbj973gWUIffw7pcQbm8SFZacAHZ4wO/Gim4T0u+ziBTSlrDuQZBMKxEhE1040
	 8QhPEK8Hew1oTnYPiW3zG3Q2BY1aRKSVX7j9bStWCA28O/nrKfHhDLTkbmZ7rbzgON
	 PA5Feh0BAYCnCZwodl9rhJiHSVPNlLeOVQ1G06as91lp4o8pRc/w46P1OWFY4/pO9a
	 YlwC2EfAK5OI++rH1j0P0McPZpeCIEynu5y25pbPWdy8DN1v13s42uSRythrkqHLoH
	 tkXBGI9FX8pcOHPSgP56wjAbaSTWiO4rygBE7y26dP89DIpAqmD/wmQNXk6h6wWY7N
	 DZJ+BswMSbrIg==
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2092.outbound.protection.outlook.com [40.107.100.92])
	by mm2.emwd.com (Postfix) with ESMTPS id BCA20385562
	for <usrp-users@lists.ettus.com>; Sun, 21 Jul 2024 00:08:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=wpi.edu header.i=@wpi.edu header.b="vNfZyKgQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rj5JHBQVGueLh6gYr2Y0e9nj+McUqsa4NksPwt0C+vHvlCNd17I+H1Lgf8TFFYtYAiBtIC3CCAtJGr6ZGqa9WWKjxIOLTC2TbExa61DOQpXHSP7HvOYBxZ6o+Mh/XT/wf91WdwXVDrYxy9E6wFTndxtygX+r1R+z/PiPuMuUbOnP8dfYVHU850LSsHDrZLkOiyhVcd+IKDBqM63S8vLdHKNFq1xqVZQqyVUyaItZXLVPBVgBf/5CQk+aCLoHIuyEPt4mQnAmEYIEZINH4LlTFv338BC6GZLk4Q1o/g09RE0wQXW63JQk9Dxk1xIAqD08QWz3aIkr0w6WcKimK/RNSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dhWc4PvapxVf0uLIFnS7WfJceJtfQ7XPhh6Ss5+zSoc=;
 b=xorEd3RdxYrdHpQtrfHAI3JgYcYJP2ovrKMrpvpQm5ownEv7z+3mw/jZ9U4S4C2k//nTWyXArSPyjwNCDfs1P+EA8J4F9Ts0DyojmtO7zGqBQ9P+xFNbTy8hxEXrKGLNEbUhKClzLGRzHAe8zlq4Rw8qM6YN+YR32SKZZK/kKzlH9yOR9oUZjIZo4ebTRCl0qP8sYazBD5VPQkhgBrVJ6GnrMAiABSkaesjlAy5GmDUiAktxZkZr6yqUSqPq2NqDa63SmH0VziDwJA9DnSUnmtXup5FXnTaQ3WJT37Zo1olxVe+oXXeorTJZX8kGugU6e3TAF8gfZr3Oo4jxLmsM9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhWc4PvapxVf0uLIFnS7WfJceJtfQ7XPhh6Ss5+zSoc=;
 b=vNfZyKgQV14JYJNdKP6ujUsrkN4UAHW8GltqG/uo3Flp5sLMS4GS2FtpYu0q5V1tpiN69eDV74vZCE8s8zadm3fdULnyLAhcmDjsYobTaaaF7aWsBt1Fw2ZvBRBK+gMo6sMTTxP+y/AU5ItKH0Bc4reqbJNJ0OcZOPI0K9ZMIbk=
Received: from PH0PR01MB6620.prod.exchangelabs.com (2603:10b6:510:90::9) by
 DM4PR01MB7545.prod.exchangelabs.com (2603:10b6:8:5c::5) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7784.16; Sun, 21 Jul 2024 04:08:45 +0000
Received: from PH0PR01MB6620.prod.exchangelabs.com
 ([fe80::d65f:21fa:9d3a:91f3]) by PH0PR01MB6620.prod.exchangelabs.com
 ([fe80::d65f:21fa:9d3a:91f3%6]) with mapi id 15.20.7784.017; Sun, 21 Jul 2024
 04:08:45 +0000
From: "Natanzi, Milad" <snatanzi@wpi.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Connecting Multiple USRP N310 to a Computer via SFP-enabled
 Switch for OAI 5G Setup
Thread-Index: AQHa2yOZosFPHTWBxEaQ/eYKgy/Wjg==
Date: Sun, 21 Jul 2024 04:08:45 +0000
Message-ID: 
 <PH0PR01MB6620BD29E83DF9073330E747DAAF2@PH0PR01MB6620.prod.exchangelabs.com>
Accept-Language: en-US, en-GB
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wpi.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR01MB6620:EE_|DM4PR01MB7545:EE_
x-ms-office365-filtering-correlation-id: 06e6e76e-defb-493c-eb38-08dca93ad0ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?8N1xvhRObSaY4wn0Ba+qCS9WmN7JQGu6TJ898Et7TFWfz84MOYdpQ/fEwtXW?=
 =?us-ascii?Q?wGzg5IjTHRaDpehxWj8lRlv9kOoLvdnwQAHzbiFAZPfYcGeVbjBGdDLq+zjP?=
 =?us-ascii?Q?GcAFBTTQ5BOeL8ChwxUEztUPtxROEFau/lYPORyCI+HKcS9obwy0OipnkUEc?=
 =?us-ascii?Q?Lhv9/GxIpAF9EIUd1ByFT12I6zz5FNrTrc9SC7YJ8ohpENG7o2TF+p8R+KDE?=
 =?us-ascii?Q?txQA4XhgNvC0ACcFkm6Au6U1BGXgNoJkn4CRHxnZdjudb1fqk/yk+owfeisn?=
 =?us-ascii?Q?ktLW7QBpODYN9G5h+KyUe9/bUQGq7GjT9r17BDgL/Z3yOhW9ZpNuFuXP1fsl?=
 =?us-ascii?Q?27VYeU8Cf4nnxfzBi1KTMeUWK+8oRRIsmL8haAchhBKCyzfXGVmHCQJSqLJm?=
 =?us-ascii?Q?Im+VPhcWS1GDwV1ayIj+jhTxUSiXp3kRgbXNjYhRg7TiA5hQRxcs/CwnRKKM?=
 =?us-ascii?Q?1qy5OxnKkj2viiN3mg8epzRUMxCWCkFaJU8srdg9lLy1ixG4P3bmY//R1dYZ?=
 =?us-ascii?Q?y1aHwjBdHjTRJ9XQu3Uh12FwsEfsHhouYP4qRNp+GhF8OxuMw/3ZOXscAIPu?=
 =?us-ascii?Q?GB1Z2M8Y5/+c5lYSPi0MGlBTQFPuggOR+ZUhGmBvuaulfiH6gtex3zCsiFOu?=
 =?us-ascii?Q?jDp6iSnf3qCwFbQE1obzlsMANLX1DqGDUaFr5pVE8JgEhpQZxLaEv+5ZZOZw?=
 =?us-ascii?Q?SCfm4mUVse4Uw3Z9YPq+hi9HgM2Bb72b/g5Ri6jSTCHweC3bAUln/rWyigzr?=
 =?us-ascii?Q?EyVYlXQPAHuzdCsAQBYKNJXsKX9Segp2pqYDgVRCzKgP3WjH4b+lljNL4mQ1?=
 =?us-ascii?Q?+3m+OwUOkd47rep5BXJeRot1xcgzcL7Y12ik2gYqmbsZ/so6SPiuqNQFPbIc?=
 =?us-ascii?Q?gMi/RSQx6Nd1H1wB2uFM7MHmXlXYErWCgSb4NNbJX6AQ/9L3VmTGJRW5Ht0E?=
 =?us-ascii?Q?IcnWBxwnbgB9rE2+SmODg4rM0rn3x/i4mrm8m8xkl1zxN5rPARjAD4HsGAuO?=
 =?us-ascii?Q?rzZ/q2OAlNHrl+ZNwLANkA1RqQyQGYkbIzoEM9369okZAMQfTOpXtwya6RGj?=
 =?us-ascii?Q?9RzJaKroMXbjI+sJY59a2QpBMihnoGFfBXMHGZ/2QXtKsqVUN+9BtOO2VMYf?=
 =?us-ascii?Q?A6t/6Yj8L5luOrI5CW7Ap2OGiDtlI7ZnjZ2ZgH1eKih63hRjfHSRy66keiBD?=
 =?us-ascii?Q?ewLAXIPb0Adj0IHPW5hCtFXvoYJHBiEHBwTjDtAXcwqQMxhf/aIxJBBlOEDL?=
 =?us-ascii?Q?aKnyVIu3Ts75LH4UelZ+dtpmQTBpxr3KDtc1UaMX45rJrcU6C13tNeUnXHuS?=
 =?us-ascii?Q?5FWPRjz0fAs61J4JngFaGOB8rYhvjA2gGB1QiC6YsRIqOFHU9OjokkqqhnYv?=
 =?us-ascii?Q?0BM+5JLAAXnTin34QmXddnEo0it9+XovGvwUnrbSIuu/uoVVVA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR01MB6620.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Y7H69N0TrVcTlClyA+GsJ3YPLCEw1tM89D1NoD4nbADXQkyr6hbsQlqPWsmt?=
 =?us-ascii?Q?7wWWl6L6wTNxnhqkuFkCS7/m6kS0cRu0KbN0zHrtzIGVQI6vmlin/x0OatrY?=
 =?us-ascii?Q?VvnMUf790GGEwMgKsc28aFz+bsU9J9O8clHi0Jqy1KsRVOtKqGsaKSqtClJc?=
 =?us-ascii?Q?hbwvHMkhBj7eZqcS6mVvcrelTHANxEgUFnYFhciHBIm/UBIpcVaH+zwEJPEp?=
 =?us-ascii?Q?ULyCeZ7Kl3oF2Nu3CKO1KLm4dcfmJT7EP+gakMbVhYSv0yAqyYYB24CLPxMS?=
 =?us-ascii?Q?qfiIHTuNN7nyh5QM0X18/SugrCH2lwBfz8s4tKVX6ipUWvKpVmIIvIAFEqa2?=
 =?us-ascii?Q?lGCfvn0fNvd89LETh8yBJq8YhImDVJdv3saj+IVjst70ObbDbebZCwJbDCIz?=
 =?us-ascii?Q?SwxtpU+BjamHQGQoY7i19257L3IDuy1OPigpKy6uGK3UrQyU5nDu/fwd3eIk?=
 =?us-ascii?Q?6p98CkvHcCXdijdTze11c1JxtO8p+f0OixfWAjELqkicehIEQULnLQYBKSun?=
 =?us-ascii?Q?kbFfWuxaJ0y95L8QdUSkUk0nWaVv8gYRqI7PRcjdP819MYdpgTaQprZxQxUR?=
 =?us-ascii?Q?7vX0koWs3zEZFatQYUP4MuRFVyDgxV4cdW921BNxKXUYLGSPOKEyarSVfhLS?=
 =?us-ascii?Q?S4FF9/O8J41c655Fk25hMgI3ILhFrt7tQ349pFtXkyZvjzhJ6ZJsq1VO92QQ?=
 =?us-ascii?Q?+v8+VOwMc8pxSA3OMzMWWzJ6fhMgpmWD6Ly2QLmNXVysUnOgwjF9XAj6r8KX?=
 =?us-ascii?Q?iRGwKal6HHvTNuIAvGYz/63iQZtYKXd7wYX6GF0nb7euZmzhfxe6jJebvv79?=
 =?us-ascii?Q?9DLpGtVEMylW0Mal8czYtiY4MPRkouIWGwtmbTUrRq7rzOs4OuCDLh//UIkG?=
 =?us-ascii?Q?kSk65F0WfPFwZjVHQqBRQxyWtKijxhw+tVg1lzhwxHoaKEYoqhELzGC4wdfQ?=
 =?us-ascii?Q?dM+JPD5cjQYoDYCZ81rxcEtjv6r+j5V9Nkroc5uICH3NHgIoSQBSojTGUoFZ?=
 =?us-ascii?Q?mzx8t4OyJ9LGkoYZ4f0jFrgkAmonDWjHJftDlcUQ+QLjGdrX6cx2VRvH4jsL?=
 =?us-ascii?Q?suQiMNPNLIi567Bqah2g4p9TBNZ1s8v4uO1JkXBH4svbhdLxEjP5YW/q4WQ3?=
 =?us-ascii?Q?eADO0f1ASFmyaz6oHiorHk+qa5R/5KLgzrMIAoG/3mWz2GfQ0OsPhNqx1Q5F?=
 =?us-ascii?Q?EUsTiKjuGbBUDdY5qZgeUBK928QYPFTEuZaAkdkX6v/2V6lE70dE5Bka4vkY?=
 =?us-ascii?Q?ODTvHgeq5tGPMEUAPmy3VmJm8IwDfQe/9dXuT0249Buo2hlLjBufVsyCDR6d?=
 =?us-ascii?Q?08pK+vS7mQdEWzb6T6F07AG4uqgUUKrCHAaUhc12U167aW2MIjuCBaskMpVB?=
 =?us-ascii?Q?oX5rEz/hMM5wevf1IBrCsE+Eaej1J7UAiN+X7FqrVmD2eXU1YtkpZoRoyGJs?=
 =?us-ascii?Q?CEmc415/Zs5YvOsExHVa8QNL2HvszsMJmgX367DS72Kn5xhxXJSY+NciVNdg?=
 =?us-ascii?Q?8UMPyuWzDr/SfNNB+rGxqJf6wBRI/CsKzKarIZxstZyWsmrGzhATjpsHLW/W?=
 =?us-ascii?Q?Z1dsUIuHx85QmqGyLKuEx8AUUwvi6WB2EdFAmwFG?=
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR01MB6620.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06e6e76e-defb-493c-eb38-08dca93ad0ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2024 04:08:45.4049
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YgXWz5pLlxJbs1TMAzSSU4b1k1siD+Be1sLu/c5Qqscuy8XxbQuviYklnSyOlM2tFPgnIHAs5OEHxMxVVDKD3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR01MB7545
Message-ID-Hash: FTG7JH67RZ3I52PWS6TE3K2V2Y2SVOWB
X-Message-ID-Hash: FTG7JH67RZ3I52PWS6TE3K2V2Y2SVOWB
X-MailFrom: snatanzi@wpi.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Connecting Multiple USRP N310 to a Computer via SFP-enabled Switch for OAI 5G Setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7GI46ZSENJ4SD5MFBHBDCPCIVGX4TRCU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3841571806266953689=="

--===============3841571806266953689==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_PH0PR01MB6620BD29E83DF9073330E747DAAF2PH0PR01MB6620prod_"

--_000_PH0PR01MB6620BD29E83DF9073330E747DAAF2PH0PR01MB6620prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am setting up a RAN with OAI gNB installation and have the following hard=
ware configuration:


  *   3 USRP N310 devices with 10G SFP ports
  *   1 computer for RAN (OAI gNB installation)
  *   1 computer for OAI core
  *   1 Dell server for training and other task and I would like to connect=
 this server also to the RAN and Core, all equipped with 10G SFP ports
I want to connect all three USRP N310 devices to a single computer, which w=
ill act as the RAN. My question is:
Can I use an SFP-enabled switch to connect all these devices?
Setup Details:

  *   All USRP devices connect to the SFP-enabled switch.
  *   The switch then connects to the two PCs (RAN and Core) and the server=
, all via SFP 10G ports.
I would appreciate any guidance on the feasibility of this setup and any re=
commendations on specific switch models or additional considerations I shou=
ld keep in mind

Thanks.
   Milad


--_000_PH0PR01MB6620BD29E83DF9073330E747DAAF2PH0PR01MB6620prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;
	panose-1:2 11 0 4 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1895193538;
	mso-list-template-ids:-368902928;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:2060204495;
	mso-list-template-ids:293732614;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7 ;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style>
</head>
<body lang=3D"EN-IE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareast-l=
anguage:EN-GB">Hello,</span><span style=3D"color:#212121;mso-ligatures:none=
;mso-fareast-language:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareast-l=
anguage:EN-GB"><br>
I am setting up a RAN with OAI gNB installation and have the following hard=
ware configuration:</span><span style=3D"color:#212121;mso-ligatures:none;m=
so-fareast-language:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareast-l=
anguage:EN-GB">&nbsp;</span><span style=3D"color:#212121;mso-ligatures:none=
;mso-fareast-language:EN-GB"><o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:#333333;margin-bottom:6.0pt;mso-list=
:l1 level1 lfo1;background:white">
<b><span style=3D"font-size:12.0pt;font-family:Helvetica;mso-ligatures:none=
;mso-fareast-language:EN-GB">3 USRP N310 devices</span></b><span style=3D"f=
ont-size:12.0pt;font-family:Helvetica;mso-ligatures:none;mso-fareast-langua=
ge:EN-GB">&nbsp;with 10G SFP ports</span><span style=3D"mso-ligatures:none;=
mso-fareast-language:EN-GB"><o:p></o:p></span></li><li class=3D"MsoNormal" =
style=3D"color:#333333;margin-bottom:6.0pt;mso-list:l1 level1 lfo1;backgrou=
nd:white">
<b><span style=3D"font-size:12.0pt;font-family:Helvetica;mso-ligatures:none=
;mso-fareast-language:EN-GB">1 computer</span></b><span style=3D"font-size:=
12.0pt;font-family:Helvetica;mso-ligatures:none;mso-fareast-language:EN-GB"=
>&nbsp;for RAN (OAI gNB installation)</span><span style=3D"mso-ligatures:no=
ne;mso-fareast-language:EN-GB"><o:p></o:p></span></li><li class=3D"MsoNorma=
l" style=3D"color:#333333;margin-bottom:6.0pt;mso-list:l1 level1 lfo1;backg=
round:white">
<b><span style=3D"font-size:12.0pt;font-family:Helvetica;mso-ligatures:none=
;mso-fareast-language:EN-GB">1 computer</span></b><span style=3D"font-size:=
12.0pt;font-family:Helvetica;mso-ligatures:none;mso-fareast-language:EN-GB"=
>&nbsp;for OAI core</span><span style=3D"mso-ligatures:none;mso-fareast-lan=
guage:EN-GB"><o:p></o:p></span></li><li class=3D"MsoNormal" style=3D"color:=
#333333;margin-bottom:6.0pt;mso-list:l1 level1 lfo1;background:white">
<b><span style=3D"font-size:12.0pt;font-family:Helvetica;mso-ligatures:none=
;mso-fareast-language:EN-GB">1 Dell server</span></b><span style=3D"font-si=
ze:12.0pt;font-family:Helvetica;mso-ligatures:none;mso-fareast-language:EN-=
GB">&nbsp;for training and other task and
 I would like to connect this server also to the RAN and Core, all equipped=
 with 10G SFP ports</span><span style=3D"mso-ligatures:none;mso-fareast-lan=
guage:EN-GB"><o:p></o:p></span></li></ul>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareast-l=
anguage:EN-GB">I want to connect all three USRP N310 devices to a single co=
mputer, which will act as the RAN. My
 question is:</span><span style=3D"color:#212121;mso-ligatures:none;mso-far=
east-language:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"font-si=
ze:12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareas=
t-language:EN-GB">Can I use an SFP-enabled switch to connect all these devi=
ces?</span></b><span style=3D"color:#212121;mso-ligatures:none;mso-fareast-=
language:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><b><span style=3D"font-si=
ze:12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareas=
t-language:EN-GB">Setup Details:</span></b><span style=3D"color:#212121;mso=
-ligatures:none;mso-fareast-language:EN-GB"><o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:#333333;margin-bottom:6.0pt;mso-list=
:l0 level1 lfo2;background:white">
<span style=3D"font-size:12.0pt;font-family:Helvetica;mso-ligatures:none;ms=
o-fareast-language:EN-GB">All USRP devices connect to the SFP-enabled switc=
h.</span><span style=3D"mso-ligatures:none;mso-fareast-language:EN-GB"><o:p=
></o:p></span></li><li class=3D"MsoNormal" style=3D"color:#333333;margin-bo=
ttom:6.0pt;mso-list:l0 level1 lfo2;background:white">
<span style=3D"font-size:12.0pt;font-family:Helvetica;mso-ligatures:none;ms=
o-fareast-language:EN-GB">The switch then connects to the two PCs (RAN and =
Core) and the server, all via SFP 10G ports.</span><span style=3D"mso-ligat=
ures:none;mso-fareast-language:EN-GB"><o:p></o:p></span></li></ul>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareast-l=
anguage:EN-GB">I would appreciate any guidance on the feasibility of this s=
etup and any recommendations on specific
 switch models or additional considerations I should keep in mind</span><sp=
an style=3D"color:#212121;mso-ligatures:none;mso-fareast-language:EN-GB"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:Helvetica;color:#333333;mso-ligatures:none;mso-fareast-l=
anguage:EN-GB"><br>
Thanks.</span><span style=3D"color:#212121;mso-ligatures:none;mso-fareast-l=
anguage:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#212121;mso-ligatures:none;mso-=
fareast-language:EN-GB">&nbsp;&nbsp; Milad<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH0PR01MB6620BD29E83DF9073330E747DAAF2PH0PR01MB6620prod_--

--===============3841571806266953689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3841571806266953689==--
