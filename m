Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CA631BBC0
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 16:02:54 +0100 (CET)
Received: from [::1] (port=40048 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBfOl-0002qI-39; Mon, 15 Feb 2021 10:02:51 -0500
Received: from mail-eopbgr110116.outbound.protection.outlook.com
 ([40.107.11.116]:39616 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1lBfOh-0002kW-Fx
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 10:02:47 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmvZlHQ5ronYSVA4HR6FQU5Lc7msAjlFF+mvcRGDQ2itJi63a0gAeGeMlGwpy+pmsMv/1ePchy5NrNzEyKsHVIYMlBYzh/Lcg8UFto+OB/9jVkRP/i6iVFe/d4wm99xJURXU8SVReb8h9l0xwY7rpUZtZokVr5KMRX30A7ajO4ZZVCVhoXN4FMlEdLhkB5ilkd/IQrJjV8OdTiRaTMMJ8bONG+sPW43d2r3eYEY+92r5BDLCKxo1xg5opLGyECh13lyXVacGgKlnkbF8dwvio3p38EczfM+hE7VaIZnCs00/2fh8XHfIMu2OB92/1LWVLyRejlTW1eu4inAjbg6oYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCwehfwLD8XL336TNzfU/DwDV/m6lNgF+IX5jvJTY70=;
 b=E55CZRMmvuQeAGI/ae5egq24CYgScj8a/4pHNoFwabn5PnzM07Ldwsf0J3sdAf9KLJqAIkpGvgBwT2xNSly59qzZu3DR+YdTJY9pRFJ5DYwiIU4c7xS1c9IikPEj9TgrfM5x/asegBigGVKvU3xVKz/iwCZjJXJ8eAZkDhOdBW64yaEcxrdrw+4tgdFnBFifkxRp7Heb0GrNE68YpqpHjNRFv1pBuYtASJl2bUwljQdx5HP/OZQ7zoOSybjsQEd6RLBO2ij+HnrXqeF5RA0mMWyKgnN2aYJ6ODF9jVoKdDyQtFWlTV/axnj0SuhGKeXnZky4FVgmhrG+dg6vImhl8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCwehfwLD8XL336TNzfU/DwDV/m6lNgF+IX5jvJTY70=;
 b=J2dbm1SQQ0UTEzqIskhMEZkikrxZxujdkq1Dy1pB49Es5zdwSkWMwEcgv9OHPWjmXkdpiioYI6NfOPPUJWfESHL4rABWuEFcS0MDiH6xQkV4ZRfjPawajKrhqPZD4ugX37QRCgKYQoWZhAR1K5HsnGNpK0SjyCD+rrRffCKmmpg=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LOYP123MB3486.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:112::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Feb
 2021 15:02:05 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3846.041; Mon, 15 Feb 2021
 15:02:05 +0000
To: 'Mike' <mikerd1@verizon.net>
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC OTT Block on E320
Thread-Index: AdcBMbPeiYyrqr/eQbmPfmK6sMotugAEt7AAAAM/DoAAA0TVgAAKJbgAAH2hgcAABy1vgAADlv7g
Date: Mon, 15 Feb 2021 15:02:05 +0000
Message-ID: <LNXP123MB37245547D82A153BBF9D94CCCA889@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
 <LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <9bc9093f-444f-453c-6fe0-5ccf05b570be@verizon.net>
 <1b9cf52b-6554-b066-f217-29f59ac2f14b@verizon.net>
 <LNXP123MB372488AF5D8D50DFF85E9C90CA889@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <8ef09f02-a99a-c867-eae9-e71710367c5a@verizon.net>
In-Reply-To: <8ef09f02-a99a-c867-eae9-e71710367c5a@verizon.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: verizon.net; dkim=none (message not signed)
 header.d=none;verizon.net; dmarc=none action=none header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c140a3b4-0056-497f-ff4c-08d8d1c2a873
x-ms-traffictypediagnostic: LOYP123MB3486:
x-microsoft-antispam-prvs: <LOYP123MB3486CD0628054A33DD25516CCA889@LOYP123MB3486.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ejiKw8qQToTJXtKprjCWEffyJ2+tsvK6bxUZd8Utd4abHO/s9pW9lyUw9sSs955TgvwpNIcE5Jh14yEtulaMT+rVOWqB9johmnd1no9AxvhUDHA9lhUAJX1O8V7ocQ0NyEV/u27jm/e9Kr26HWEYRFvn+oYPtuw969TAa4kBX2WlNfUNhT57lVTtUlLvYDqXF46ZkXYpU0OY9w2UchwjnF0Tszu67W0PZaKlqD43IHtbSzfhbmqZXLHOw1s74/SB/Osuhy+ffTWDG5//OWHv4ayiMFv+FunkXM6MAu7CVaSTeRVRyuwftWbLCB/eYTAPKnNP1j2EQDvi2tv4+AxLZ6TCtgaKp21OTe/B1I3AITBgStLRie3pCurbT8VsiXCTLG3LlO/kqFMXGjx4ipUzDCqIU8tIbKuAXRM8I4YcmJBHnacoXfsgXki07lP4j152HlYTUE9rWLQ3pz78o8/4yhwcwypV6YampYdkwcsaJsnjJVKO0C4NQ8QUizBUiM9bS2QcpmcIJNFFX3BaVrz/UK50FjRYmkhi+OzmZZihQdBhhpUGDngD0ewuSp6HxSPTLfhcCMNcFSjKDJXU0PQ6ROJK0WjzkSeJJ1T3+0hjeRs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39840400004)(366004)(396003)(136003)(26005)(52536014)(76116006)(6916009)(478600001)(166002)(9686003)(7696005)(8676002)(66476007)(86362001)(33656002)(186003)(71200400001)(66946007)(316002)(66446008)(64756008)(55016002)(2906002)(30864003)(83380400001)(6506007)(53546011)(4326008)(8936002)(5660300002)(66556008)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?2LWfMcCZTGdKSJT1zggRWztMoNhGwNMS0s9tzt+jEJccGKkLQ9AsRYN7Li?=
 =?iso-8859-1?Q?wgTixDYev0oyL04TcdnXlyiXzhcd5FnXLCwFe1YISqw5aSggw80HhgaHpj?=
 =?iso-8859-1?Q?VBRx8agH+H1s2/jlNiGwIL+ts/mnD+C3wsQUKs39q4GyvMRKJ92g7Tx4LM?=
 =?iso-8859-1?Q?HWgDXVlSYpfRcFhmG74I7T1CB/8mYGA7+taf7YUeoiNoQapnP8TQEBV8J+?=
 =?iso-8859-1?Q?DHEBF2tPQwn8rp0BUxans/pflynIq6kbcP9bvEWgvggOsXwTwgr9Lmh8Pw?=
 =?iso-8859-1?Q?GFYfSIHx+gMYM2YxTvHIXHPoyBeAu1z1994wBH30s7T0QYlehxiVUnDn5i?=
 =?iso-8859-1?Q?uvUWSQt+I3t2wmDy2DQrllEYcgsMCgxDYXQN0t4EUyA6buFjzXbo1XeV/D?=
 =?iso-8859-1?Q?FmxVgw6BXSQwhnWy3Hm30TF4hA3UkR6dKa2OsPnvuhFCtShcObmJOj4t+p?=
 =?iso-8859-1?Q?54+VnQ75jmnT5OkkJ2Wdca+tZfxso4cKlViRFsBEbau9AiZ6C/hHrsIY6b?=
 =?iso-8859-1?Q?LuHb8JF+y6FCe77UXXgt70g6iM2MuPeS0AO47Hqi/fpm2PNvbSICyd3mj3?=
 =?iso-8859-1?Q?JHmfn6deES5DstmD/NeUChG2d/big3VbkC/Ov69YDAKzNoPVpKCCLYC9Mw?=
 =?iso-8859-1?Q?thMiw2Z3seMGJR0mPXFGJ9EoLR3rhnnzfXSXMiLwSZbCen5izCPIDuWhRy?=
 =?iso-8859-1?Q?jEvan+NjwT1Og4jOIaKwm+NXdPfrRNyleA9UW2LGIXLItWq8w3dQqCpqpQ?=
 =?iso-8859-1?Q?hTaFVCOo8VCsP2CNF2cNtpRHiUPnDC9Q6uSAA3d+VfUzRnjHY9ztiwOjOF?=
 =?iso-8859-1?Q?wMdVzdz+rqKzY4gbocgHT/MpYzuJnUAxbOudsnhcoNldD0BEBPAhQ9uE1S?=
 =?iso-8859-1?Q?M4RGDoeSOpZ3O+9svOfj0bF6lVpPn5cbnqkF1ebe7lZIosANQ3kEFWdUD1?=
 =?iso-8859-1?Q?giwuXcS54DZcBqcltZpWS+Riy44RJ3QoEBNObgjT+j9a/xsNqLVX3M8vPZ?=
 =?iso-8859-1?Q?zwY4Y/T6S8Mv/y0s6XaxpPFwW2wl/HQbjjKX/bysS6rz3M5835ieaxvZin?=
 =?iso-8859-1?Q?Z/GE9ByTXs6t1pKz2dJkMb3apjsUiZc3G9EgjcUlZdj72tvoPsGAl3JSvQ?=
 =?iso-8859-1?Q?J/w2pHm91biEIg/ZtWlg6l6U+4rkpyPQipyq0I8imW3sPT15dObpK9scyh?=
 =?iso-8859-1?Q?wH3Ab8oTB8DKI1XRvp1aqA7XEE37vBhNFRFJ54aDtI/xwC6fLHIRftDulP?=
 =?iso-8859-1?Q?aEYGfYkvDcpmzRNxxNlFTlvPQtzJlRzoOXsq/KF6lGj5a7N8IF+BEHEJUf?=
 =?iso-8859-1?Q?ByE2CU1IqFjcEjcrrJ9aXgjDuc2Ged5Qz4MtArHGqYm//JPpegyiURPnFj?=
 =?iso-8859-1?Q?9L6sCZneEJ?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c140a3b4-0056-497f-ff4c-08d8d1c2a873
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2021 15:02:05.1894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kCcW/C4QVp0KDFxA6SB6EQIGgyGD8wddaMvzW/P93zt5ibK9i4wKglxnSz6J/2tMu0vvdVYQ5gOnQGZj1I2LHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP123MB3486
Subject: Re: [USRP-users] RFNoC OTT Block on E320
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============0990722609424574462=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0990722609424574462==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB37245547D82A153BBF9D94CCCA889LNXP123MB3724GBRP_"

--_000_LNXP123MB37245547D82A153BBF9D94CCCA889LNXP123MB3724GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Mike,

Good idea, but I'd already got the Python path pointing correctly to the /u=
sr/lib/python3/dist-packages.

I've been doing a bit more digging and trying to see what actually happens =
as the code loads up.

The "import dilbert" that's near the top of the python code generated from =
GNU Radio goes off and pulls in __init__.py from the  dilbert directory und=
er the folder in the Python path above.

This __init__.py file tries to import from dilbert_swig, and this failing. =
There's a comment that's been added stating "This might fail in the module =
is Python-only". I've added a bit of code into __init__.py to debug this, a=
nd the root cause seems to be that importing dilbert_swig fails due to not =
being able to access the libgnuradio-dilbert.so . The error message goes on=
 to say that cannot open the shared object file, No such file or directory =
exists.

So it looks like this shared object file is missing. I'm assuming that it s=
hould be built from C++ code for the module.

I've sent an email off to Ettus support to see if they have any ideas what =
the issue may be.

Mark


From: Mike <mikerd1@verizon.net>
Sent: 15 February 2021 13:00
To: Mark D <md964@hmgcc.gov.uk>
Cc: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC OTT Block on E320


Mark,

I had a similar problem earlier.=EF=BF=BD Jonathon Pendlum responded to me =
as follows:

> The might be due to the PYTHONPATH env variable not including the

> directory where your OOT module is installed. Try looking for a

> directory like /usr/lib/python2/dist-packages or similar and adding

> that to PYTHONPATH.



What I had to do was add a search path to the location where my OOT module =
was added to.=EF=BF=BD In my case the issue was solved by adding the follow=
ing:

$LOCALPREFIX/lib/python2.7/dist-packages:$PYTHONPATH

to my python path that is configured when you source the environment variab=
les.=EF=BF=BD Also, this was done on my E310 but that was because that was =
where I was trying to execute the program (on ARM).=EF=BF=BD You may need t=
o add the search path on your host machine so it knows where to find your n=
ew OOT module there as well.

Mike
On 2/15/21 5:40 AM, Mark D wrote:
Mike,
=EF=BF=BD
Thanks for your input into this, it=EF=BF=BDs really useful being able to t=
alk over this issue.
=EF=BF=BD
My system will be placing all the signal conditioning within the FPGA. The =
output from this is a relatively low data rate which I was hoping to stream=
 via the Ethernet connected to the ARM. There should be no need for us to u=
se the SFP+ interface. The ARM will not be doing any processing of the data=
, just passing it back to the host PC. I have just out of interest tried co=
nnecting via the SFP+ and get the same issue.
=EF=BF=BD
I am able to build the FPGA image with my block in, and upload this to the =
E320. My initial understanding of how a system as described above would wor=
k is the software on the Host PC would issue commands to the USRP to read a=
nd write registers in blocks as required to configure the device, for examp=
le the gain setting in the examples. The ARM wouldn=EF=BF=BDt require any k=
nowledge of how the blocks worked, it just writes and reads to the address =
within the blocks as instructed. This was what I thought Network Mode (as o=
pposed to Embedded Mode) meant, it was acting more or less like the USRPs w=
ithout the ARM.
=EF=BF=BD
As we=EF=BF=BDre both seeing the same error then I=EF=BF=BDm not 100% sure =
that cross-compiling the OOT code for the E320 will resolve the problem. =
=EF=BF=BDMy GNU radio code is running entirely on the host PC. I=EF=BF=BDll=
 probably look more into the cross-compiling today as I=EF=BF=BDm running o=
ut of any other ideas to try.
=EF=BF=BD
The error I=EF=BF=BDm currently hitting is that when running the GNU radio =
flow graph with my new block I get the error
=EF=BF=BDLine 98, in __init__
=EF=BF=BD=EF=BF=BDself.dilbert_dogbert_0=3Ddilbert.dogbert(
AttributeErroe:module =EF=BF=BDdilbert=EF=BF=BD has no attribute=EF=BF=BDdo=
gbert=EF=BF=BD=EF=BF=BD
=EF=BF=BD
What I have found that is if I enter Python on the command line and enter =
=EF=BF=BDimport dilbert=EF=BF=BD followed by =EF=BF=BDdir(dilbert)=EF=BF=BD=
 then it appears that there=EF=BF=BDs nothing in this module other that the=
 things like __builtins__ , __cached__,__doc__ =EF=BF=BD.. . There is no do=
gbert class within module, and this I think is the source of the issue.
=EF=BF=BD
Like you say, we could really do with a response from Ettus to throw some l=
ight on this. An update to Gain Block tutorials aimed at the E3xx devices w=
ould be really useful.
=EF=BF=BD
Mark
=EF=BF=BD
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> On Behalf Of Mike via USRP-users
Sent: 12 February 2021 21:37
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC OTT Block on E320
=EF=BF=BD

Mark,

I looked at the capabilities of the E320 compared to the E310 and I underst=
and your comment about "embedded mode" now.=EF=BF=BD My experience is stric=
tly with the E310.=EF=BF=BD I didn't realize the E320 had an SFP+ interface=
 that allows you to stream sample data back to the host at a much higher ra=
te than the embedded ARM core can process.=EF=BF=BD So, it seems like you s=
hould be able to update the FPGA on the E320 and stream the data into your =
host machine bypassing the internal ARM processor.=EF=BF=BD Still, it seems=
 that you need to install the the new RFNoC module onto the E320 so that it=
 knows what each block in the FPGA is when you run uhd_usrp_probe (you were=
 seeing the block named simply Block #0).

And if you can stream data directly to the host then you shouldn't be seein=
g the same error I'm having (running on the embedded ARM).=EF=BF=BD You sho=
uld be able to run directly on the host.=EF=BF=BD If you are trying to run =
on the embedded ARM then you will have to follow the steps I outlined below=
 for cross-compiling.

Meanwhile, I'd like to hear a response from one of the Ettus guys because I=
'm sure I'm off base in a couple areas.=EF=BF=BD Like, my RFNoC stuff is no=
t working so clearly I'm doing something wrong.=EF=BF=BD But, I'm hoping ju=
st talking it out will reveal where the errors are.

Mike
On 2/12/21 11:46 AM, Mike via USRP-users wrote:

Mark,

I'm not sure I understand what you mean by "embedded mode".=EF=BF=BD That m=
ay be a term used for other Ettus devices like X310 or N310.=EF=BF=BD Let m=
e describe what I think the E3xx GNU Radio universe looks like.

In addition to the Ettus E310, I have a Lime Mini device that connects dire=
ctly to the host computer via USB3.0.=EF=BF=BD Any GNU Radio program that I=
 make (usually gnuradio-companion) runs directly on the host computer (my l=
aptop with Ubuntu 18.04LTS) and directly processes the raw samples from the=
 radio. Ettus X310 and N310 type devices would transfer raw samples from th=
e radio via 10GigE type interfaces for similar processing on the host compu=
ter.=EF=BF=BD Note, no local software processing on the USRP device.=EF=BF=
=BD FPGA processing, yes; but software processing, no.

In contrast to that, the E310 has an embedded ARM processor that executes a=
 python script (usually output from GRC).=EF=BF=BD Obviously, this needs to=
 run in non-gui mode which is controlled by the "Options" block in your GRC=
 flow graph (set to No GUI).=EF=BF=BD Similar to the host computer running =
with the Lime Mini (for example), the ARM processor can process the raw sam=
ples from the radio.=EF=BF=BD However, since the ARM processor is relativel=
y low powered it cannot process "raw" samples at a very high rate.=EF=BF=BD=
 Therefore it requires the FPGA (RFNoC) to handle as much of the raw data p=
rocessing as possible.=EF=BF=BD So, the host computer is used to generate t=
he FPGA bit file (using Xilinx, Vivado) as well as any software modules (OO=
T) that need to be run on the ARM.=EF=BF=BD This is where the cross-compili=
ng comes in.=EF=BF=BD The host computer has to compile the code that is goi=
ng to eventually execute on the ARM.=EF=BF=BD After the cross-compilation i=
s complete you need to move your newly compiled module over to the E3xx.=EF=
=BF=BD This is where I use sshfs so that I can "make install DESTDIR=3D..."=
 into a location that is temporarily visible within the E3xx device.=EF=BF=
=BD Eventually you will copy this data to the flash card on your E3xx devic=
e so that your application can be available at any time (running totally di=
sconnected from any host computer).

So, using the E3xx devices are a little more complex because you have to na=
vigate the cross-compiling aspect and rely on the FPGA to handle the higher=
 bandwidth data processing.=EF=BF=BD Thus the reason why I'm anxious to fix=
 an issue with the ARM executing a GRC flow-graph that contains an OOT RFNo=
C module.=EF=BF=BD It's hard to make the E3xx do anything reasonable withou=
t the FPGA performing as much work as possible.

Anyway, hope that helped clear things up a little,

Mike
On 2/12/21 10:32 AM, Mark D wrote:
Thanks Mike,
=EF=BF=BD
I don=EF=BF=BDt have a much experience of Linux, I=EF=BF=BDve just had to l=
ook up what sshfs is, so as you can imagine this is becoming a very steep l=
earning curve for me.
=EF=BF=BD
After reading your reply and doing a bit of research I=EF=BF=BDve found AN-=
315 =EF=BF=BDSoftware Development on the E3xx USRP=EF=BF=BD which goes thro=
ugh the cross-compiling process. Unfortunately it looks like this was writt=
en for UHD 3.14.1. so there may be some differences for 4.0.
=EF=BF=BD
I did initially think that as I wasn=EF=BF=BDt using the USRP in =EF=BF=BDe=
mbedded mode=EF=BF=BD then the firmware on the unit wouldn=EF=BF=BDt need t=
o be updated, and the RFNoC would be more or less configured via the host c=
omputer. Seems that this isn=EF=BF=BDt the case.
=EF=BF=BD
Mark
=EF=BF=BD
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> On Behalf Of Mike via USRP-users
Sent: 12 February 2021 13:40
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC OTT Block on E320
=EF=BF=BD

Mark,

For uhd_usrp_probe to correctly read your fpga block module you need to upd=
ate the XML file in your RFNOC-module/rfnoc/blocks directory.=EF=BF=BD Then=
 you need to cross-compile your module like you would with gr-ettus and ins=
tall it on the E320.=EF=BF=BD I use sshfs to cross-compile on the host and =
make it immediately available on my E310.

It may be that the process on UHD4 is slightly different but that is what I=
 do to make the correct name of my new block show up in uhd_usrp_probe.

I still have the python "attribute error" so hopefully now that two people =
are seeing this on both UHD3.15 and UHD4.0 we can get to the bottom of it.

Mike
On 2/12/21 6:52 AM, Mark D via USRP-users wrote:
Hi,
=EF=BF=BD
I=EF=BF=BDm trying to add an OTT block into the FPGA for an E320. I=EF=BF=
=BDm using version 4.0.0 of the UHD.
=EF=BF=BD
So far I=EF=BF=BDve used rfnocmodtool to create the OOT folder structure an=
d add my new block. My initial plan was to add this block as per the defaul=
t code generated that just passes data through. I wanted see that this was =
instantiated into the FPGA and the system still worked before starting to a=
dd my own code.
=EF=BF=BD
I=EF=BF=BDve been following the =EF=BF=BDGetting Started with RFNoC in UHD =
4.0=EF=BF=BD page on the Ettus website and also the Youtube video =EF=BF=BD=
RFNoC 4 Workshop - GRCon 2020=EF=BF=BD. The .yml file I=EF=BF=BDve created =
connects the OTT block between the radio Rx and stream endpoint (I=EF=BF=BD=
ve removed the DDC / DUC and already had the FPGA working without these).
=EF=BF=BD
So far I=EF=BF=BDve got the FPGA built and uploaded to the FPGA. Uhd_usrp_p=
robe shows that the RFNoC routing as expected, but the name of OTT block ha=
s been replaced with Block#0. The OOT project appears as a folder in GNU ra=
dio with the new block available to be dragged into the project.
=EF=BF=BD
I think the issues I=EF=BF=BDm now having are similar to those reported rec=
ently by Mike with the E310. Trying to run a GNU radio project results in t=
he error =EF=BF=BD AttributeError: module =EF=BF=BDDilbert=EF=BF=BD object =
has no attribute 'dogbert'=EF=BF=BD
=EF=BF=BD
The examples I=EF=BF=BDm following are all based around the X310, is there =
an extra step required for the E3xx USRPs to update the firmware running on=
 the device so that it=EF=BF=BDs aware of the new block type? If so I=EF=BF=
=BDve no idea how I would go about this.
=EF=BF=BD
Any help on this would be much appreciated,
=EF=BF=BD
Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.




_______________________________________________

USRP-users mailing list

USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>

http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com




_______________________________________________

USRP-users mailing list

USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>

http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_LNXP123MB37245547D82A153BBF9D94CCCA889LNXP123MB3724GBRP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:EN-US;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Thanks Mike,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Good idea, but I&#8217;d already got the Python path=
 pointing correctly to the /usr/lib/python3/dist-packages.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been doing a bit more digging and trying =
to see what actually happens as the code loads up.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The &#8220;import dilbert&#8221; that&#8217;s near t=
he top of the python code generated from GNU Radio goes off and pulls in __=
init__.py from the&nbsp; dilbert directory under the folder in the Python p=
ath above.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This __init__.py file tries to import from dilbert_s=
wig, and this failing. There&#8217;s a comment that&#8217;s been added stat=
ing &#8220;This might fail in the module is Python-only&#8221;. I&#8217;ve =
added a bit of code into __init__.py to debug this, and the root
 cause seems to be that importing dilbert_swig fails due to not being able =
to access the libgnuradio-dilbert.so . The error message goes on to say tha=
t cannot open the shared object file, No such file or directory exists.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So it looks like this shared object file is missing.=
 I&#8217;m assuming that it should be built from C++ code for the module.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve sent an email off to Ettus support to see=
 if they have any ideas what the issue may be.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:EN-GB"> Mike &lt;mikerd1@verizon.net&gt;
<br>
<b>Sent:</b> 15 February 2021 13:00<br>
<b>To:</b> Mark D &lt;md964@hmgcc.gov.uk&gt;<br>
<b>Cc:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<=
br>
<b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on E320<o:p></o:p></span><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Mark,<o:p></o:p></p>
<p>I had a similar problem earlier.=EF=BF=BD Jonathon Pendlum responded to =
me as follows:<o:p></o:p></p>
<pre>&gt;<i> The might be due to the PYTHONPATH env variable not including =
the <o:p></o:p></i></pre>
<pre>&gt;<i> directory where your OOT module is installed. Try looking for =
a <o:p></o:p></i></pre>
<pre>&gt;<i> directory like /usr/lib/python2/dist-packages or similar and a=
dding <o:p></o:p></i></pre>
<pre>&gt;<i> that to PYTHONPATH.<o:p></o:p></i></pre>
<pre><i><o:p>&nbsp;</o:p></i></pre>
<p><i>What I had to do was add a search path to the location where my OOT m=
odule was added to.=EF=BF=BD In my case the issue was solved by adding the =
following:</i><o:p></o:p></p>
<p>$LOCALPREFIX/lib/python2.7/dist-packages:$PYTHONPATH<o:p></o:p></p>
<p>to my python path that is configured when you source the environment var=
iables.=EF=BF=BD Also, this was done on my E310 but that was because that w=
as where I was trying to execute the program (on ARM).=EF=BF=BD You may nee=
d to add the search path on your host machine
 so it knows where to find your new OOT module there as well.<o:p></o:p></p=
>
<p>Mike<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 2/15/21 5:40 AM, Mark D wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Mike,<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks for your input into this, it=EF=BF=BDs really=
 useful being able to talk over this issue.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">My system will be placing all the signal conditionin=
g within the FPGA. The output from this is a relatively low data rate which=
 I was hoping to stream via the Ethernet connected to the ARM. There should=
 be no need for us to use the SFP+
 interface. The ARM will not be doing any processing of the data, just pass=
ing it back to the host PC. I have just out of interest tried connecting vi=
a the SFP+ and get the same issue.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I am able to build the FPGA image with my block in, =
and upload this to the E320. My initial understanding of how a system as de=
scribed above would work is the software on the Host PC would issue command=
s to the USRP to read and write registers
 in blocks as required to configure the device, for example the gain settin=
g in the examples. The ARM wouldn=EF=BF=BDt require any knowledge of how th=
e blocks worked, it just writes and reads to the address within the blocks =
as instructed. This was what I thought
 Network Mode (as opposed to Embedded Mode) meant, it was acting more or le=
ss like the USRPs without the ARM.
<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">As we=EF=BF=BDre both seeing the same error then I=
=EF=BF=BDm not 100% sure that cross-compiling the OOT code for the E320 wil=
l resolve the problem. =EF=BF=BDMy GNU radio code is running entirely on th=
e host PC. I=EF=BF=BDll probably look more into the cross-compiling
 today as I=EF=BF=BDm running out of any other ideas to try.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">The error I=EF=BF=BDm currently hitting is that when=
 running the GNU radio flow graph with my new block I get the error
<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BDLine 98, in __init__ <o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD=EF=BF=BDself.dilbert_dogbert_0=3Ddilbert.d=
ogbert( <o:p></o:p></p>
<p class=3D"MsoNormal">AttributeErroe:module =EF=BF=BDdilbert=EF=BF=BD has =
no attribute=EF=BF=BDdogbert=EF=BF=BD=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">What I have found that is if I enter Python on the c=
ommand line and enter =EF=BF=BDimport dilbert=EF=BF=BD followed by =EF=BF=
=BDdir(dilbert)=EF=BF=BD then it appears that there=EF=BF=BDs nothing in th=
is module other that the things like __builtins__ , __cached__,__doc__
 =EF=BF=BD.. . There is no dogbert class within module, and this I think is=
 the source of the issue.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Like you say, we could really do with a response fro=
m Ettus to throw some light on this. An update to Gain Block tutorials aime=
d at the E3xx devices would be really useful.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:EN-GB"> USRP-users
</span><a href=3D"mailto:usrp-users-bounces@lists.ettus.com"><span lang=3D"=
EN-US" style=3D"mso-fareast-language:EN-GB">&lt;usrp-users-bounces@lists.et=
tus.com&gt;</span></a><span style=3D"mso-fareast-language:EN-GB">
<b><span lang=3D"EN-US">On Behalf Of </span></b><span lang=3D"EN-US">Mike v=
ia USRP-users<br>
<b>Sent:</b> 12 February 2021 21:37<br>
<b>To:</b> </span></span><a href=3D"mailto:usrp-users@lists.ettus.com"><spa=
n lang=3D"EN-US" style=3D"mso-fareast-language:EN-GB">usrp-users@lists.ettu=
s.com</span></a><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-GB"><=
br>
<b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on E320</span><o:p></o:p><=
/p>
</div>
</div>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p>Mark,<o:p></o:p></p>
<p>I looked at the capabilities of the E320 compared to the E310 and I unde=
rstand your comment about &quot;embedded mode&quot; now.=EF=BF=BD My experi=
ence is strictly with the E310.=EF=BF=BD I didn't realize the E320 had an S=
FP+ interface that allows you to stream sample data back
 to the host at a much higher rate than the embedded ARM core can process.=
=EF=BF=BD So, it seems like you should be able to update the FPGA on the E3=
20 and stream the data into your host machine bypassing the internal ARM pr=
ocessor.=EF=BF=BD Still, it seems that you need
 to install the the new RFNoC module onto the E320 so that it knows what ea=
ch block in the FPGA is when you run uhd_usrp_probe (you were seeing the bl=
ock named simply Block #0).<o:p></o:p></p>
<p>And if you can stream data directly to the host then you shouldn't be se=
eing the same error I'm having (running on the embedded ARM).=EF=BF=BD You =
should be able to run directly on the host.=EF=BF=BD If you are trying to r=
un on the embedded ARM then you will have to
 follow the steps I outlined below for cross-compiling.<o:p></o:p></p>
<p>Meanwhile, I'd like to hear a response from one of the Ettus guys becaus=
e I'm sure I'm off base in a couple areas.=EF=BF=BD Like, my RFNoC stuff is=
 not working so clearly I'm doing something wrong.=EF=BF=BD But, I'm hoping=
 just talking it out will reveal where the errors
 are.<o:p></o:p></p>
<p>Mike<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 2/12/21 11:46 AM, Mike via USRP-users wrote:<o:p>=
</o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p>Mark,<o:p></o:p></p>
<p>I'm not sure I understand what you mean by &quot;embedded mode&quot;.=EF=
=BF=BD That may be a term used for other Ettus devices like X310 or N310.=
=EF=BF=BD Let me describe what I think the E3xx GNU Radio universe looks li=
ke.<o:p></o:p></p>
<p>In addition to the Ettus E310, I have a Lime Mini device that connects d=
irectly to the host computer via USB3.0.=EF=BF=BD Any GNU Radio program tha=
t I make (usually gnuradio-companion) runs directly on the host computer (m=
y laptop with Ubuntu 18.04LTS) and directly
 processes the raw samples from the radio. Ettus X310 and N310 type devices=
 would transfer raw samples from the radio via 10GigE type interfaces for s=
imilar processing on the host computer.=EF=BF=BD Note, no local software pr=
ocessing on the USRP device.=EF=BF=BD FPGA processing,
 yes; but software processing, no.<o:p></o:p></p>
<p>In contrast to that, the E310 has an embedded ARM processor that execute=
s a python script (usually output from GRC).=EF=BF=BD Obviously, this needs=
 to run in non-gui mode which is controlled by the &quot;Options&quot; bloc=
k in your GRC flow graph (set to No GUI).=EF=BF=BD Similar
 to the host computer running with the Lime Mini (for example), the ARM pro=
cessor can process the raw samples from the radio.=EF=BF=BD However, since =
the ARM processor is relatively low powered it cannot process &quot;raw&quo=
t; samples at a very high rate.=EF=BF=BD Therefore it
 requires the FPGA (RFNoC) to handle as much of the raw data processing as =
possible.=EF=BF=BD So, the host computer is used to generate the FPGA bit f=
ile (using Xilinx, Vivado) as well as any software modules (OOT) that need =
to be run on the ARM.=EF=BF=BD This is where
 the cross-compiling comes in.=EF=BF=BD The host computer has to compile th=
e code that is going to eventually execute on the ARM.=EF=BF=BD After the c=
ross-compilation is complete you need to move your newly compiled module ov=
er to the E3xx.=EF=BF=BD This is where I use sshfs
 so that I can &quot;make install DESTDIR=3D...&quot; into a location that =
is temporarily visible within the E3xx device.=EF=BF=BD Eventually you will=
 copy this data to the flash card on your E3xx device so that your applicat=
ion can be available at any time (running totally
 disconnected from any host computer).<o:p></o:p></p>
<p>So, using the E3xx devices are a little more complex because you have to=
 navigate the cross-compiling aspect and rely on the FPGA to handle the hig=
her bandwidth data processing.=EF=BF=BD Thus the reason why I'm anxious to =
fix an issue with the ARM executing a
 GRC flow-graph that contains an OOT RFNoC module.=EF=BF=BD It's hard to ma=
ke the E3xx do anything reasonable without the FPGA performing as much work=
 as possible.<o:p></o:p></p>
<p>Anyway, hope that helped clear things up a little,<o:p></o:p></p>
<p>Mike<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 2/12/21 10:32 AM, Mark D wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Thanks Mike,<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I don=EF=BF=BDt have a much experience of Linux, I=
=EF=BF=BDve just had to look up what sshfs is, so as you can imagine this i=
s becoming a very steep learning curve for me.
<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">After reading your reply and doing a bit of research=
 I=EF=BF=BDve found AN-315 =EF=BF=BDSoftware Development on the E3xx USRP=
=EF=BF=BD which goes through the cross-compiling process. Unfortunately it =
looks like this was written for UHD 3.14.1. so there may
 be some differences for 4.0.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I did initially think that as I wasn=EF=BF=BDt using=
 the USRP in =EF=BF=BDembedded mode=EF=BF=BD then the firmware on the unit =
wouldn=EF=BF=BDt need to be updated, and the RFNoC would be more or less co=
nfigured via the host computer. Seems that this isn=EF=BF=BDt the
 case.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:EN-GB"> USRP-users
</span><a href=3D"mailto:usrp-users-bounces@lists.ettus.com"><span lang=3D"=
EN-US" style=3D"mso-fareast-language:EN-GB">&lt;usrp-users-bounces@lists.et=
tus.com&gt;</span></a><span style=3D"mso-fareast-language:EN-GB">
<b><span lang=3D"EN-US">On Behalf Of </span></b><span lang=3D"EN-US">Mike v=
ia USRP-users<br>
<b>Sent:</b> 12 February 2021 13:40<br>
<b>To:</b> </span></span><a href=3D"mailto:usrp-users@lists.ettus.com"><spa=
n lang=3D"EN-US" style=3D"mso-fareast-language:EN-GB">usrp-users@lists.ettu=
s.com</span></a><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-GB"><=
br>
<b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on E320</span><o:p></o:p><=
/p>
</div>
</div>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p>Mark,<o:p></o:p></p>
<p>For uhd_usrp_probe to correctly read your fpga block module you need to =
update the XML file in your RFNOC-module/rfnoc/blocks directory.=EF=BF=BD T=
hen you need to cross-compile your module like you would with gr-ettus and =
install it on the E320.=EF=BF=BD I use sshfs
 to cross-compile on the host and make it immediately available on my E310.=
<o:p></o:p></p>
<p>It may be that the process on UHD4 is slightly different but that is wha=
t I do to make the correct name of my new block show up in uhd_usrp_probe.<=
o:p></o:p></p>
<p>I still have the python &quot;attribute error&quot; so hopefully now tha=
t two people are seeing this on both UHD3.15 and UHD4.0 we can get to the b=
ottom of it.<o:p></o:p></p>
<p>Mike<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 2/12/21 6:52 AM, Mark D via USRP-users wrote:<o:p=
></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I=EF=BF=BDm trying to add an OTT block into the FPGA=
 for an E320. I=EF=BF=BDm using version 4.0.0 of the UHD.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">So far I=EF=BF=BDve used rfnocmodtool to create the =
OOT folder structure and add my new block. My initial plan was to add this =
block as per the default code generated that just passes data through. I wa=
nted see that this was instantiated into
 the FPGA and the system still worked before starting to add my own code.<o=
:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I=EF=BF=BDve been following the =EF=BF=BDGetting Sta=
rted with RFNoC in UHD 4.0=EF=BF=BD page on the Ettus website and also the =
Youtube video =EF=BF=BDRFNoC 4 Workshop - GRCon 2020=EF=BF=BD. The .yml fil=
e I=EF=BF=BDve created connects the OTT block between the radio Rx and
 stream endpoint (I=EF=BF=BDve removed the DDC / DUC and already had the FP=
GA working without these).<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">So far I=EF=BF=BDve got the FPGA built and uploaded =
to the FPGA. Uhd_usrp_probe shows that the RFNoC routing as expected, but t=
he name of OTT block has been replaced with Block#0. The OOT project appear=
s as a folder in GNU radio with the new
 block available to be dragged into the project.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">I think the issues I=EF=BF=BDm now having are simila=
r to those reported recently by Mike with the E310. Trying to run a GNU rad=
io project results in the error =EF=BF=BD AttributeError: module =EF=BF=BDD=
ilbert=EF=BF=BD object has no attribute 'dogbert'=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">The examples I=EF=BF=BDm following are all based aro=
und the X310, is there an extra step required for the E3xx USRPs to update =
the firmware running on the device so that it=EF=BF=BDs aware of the new bl=
ock type? If so I=EF=BF=BDve no idea how I would go
 about this.<o:p></o:p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Any help on this would be much appreciated,<o:p></o:=
p></p>
<p class=3D"MsoNormal">=EF=BF=BD<o:p></o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"mso-fareast-language:EN-GB">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">This emai=
l and any files transmitted with it are confidential and intended solely fo=
r the use of the individual or entity to whom they are addressed. If you ha=
ve received this email in error please
 notify the system manager. <br>
<br>
<br>
<br>
</span><o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"><br>
<br>
<br>
</span><o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
</blockquote>
</div>
</body>
</html>

--_000_LNXP123MB37245547D82A153BBF9D94CCCA889LNXP123MB3724GBRP_--


--===============0990722609424574462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0990722609424574462==--

