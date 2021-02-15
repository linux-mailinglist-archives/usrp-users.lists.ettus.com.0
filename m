Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362931B75B
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 11:41:26 +0100 (CET)
Received: from [::1] (port=38188 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBbJh-00015C-RT; Mon, 15 Feb 2021 05:41:21 -0500
Received: from mail-eopbgr110103.outbound.protection.outlook.com
 ([40.107.11.103]:50644 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1lBbJe-00010w-1q
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 05:41:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eqXQwJXpj38JXrlkCGs8RlP02M900DOyPFMya0B/GWCydm30B4TI8TbE7nKPSBuHv8Gqo2XdSM/Sxqt2Jherl30Wptn/o+/DPr7uZiReJeWhQMy2Y1RabzvpzBy8sdnOxpdX7rVWaP1TH1aY5wwIyUNwnY8I/geRjexOxIxC+LWipCOQFct7d9rNqW38p/XBStCyggv17/iJ2DXC2MQQU7KzpKuvtfMZSDlL/yS4RcsErNAMgQptDPJQKp8gCXOmKgtrqOjT0LpiaeCrGTskQybxNszbO0Em+BScvMnhKlyzY17WLAUd3+r+rC8gHA1IFDaOrJCfIllMYS73dQk72w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fl1WVd+Wrfw1WfWPuvHiUWnec0quUh5srbeMWf5lWCo=;
 b=RU5zAYRzAOySh+34A82XFbVCs/t27gfE0sb3ehb+S8VVWlgCvtrhjZZYApEhjaU0iVt7sN5kt74Gwks1PNxc6nj54UiOaIl9F/1JnEku2LfghTUYNgjT8fPOiveatr3XHTXkj0s5a1pSh8LgiRq1Vnc9hQKieq3USLhLSjWNQkFLvOHE3C+qGkNszHLu3koem/z1wvlyC8HfO3CFhDqlknZxrlr0+GukPEidmwvlScgPbC/aCxoYN6a9KPYJAkaA3U9W2RwN9MgqrhuN15g8rskdagx4HBtzzzbP9eQFf91YrLLCJbx7EjrNYEZRcAKaMxKVoqkVNvCANZj/1CTy9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fl1WVd+Wrfw1WfWPuvHiUWnec0quUh5srbeMWf5lWCo=;
 b=cHWht4x4SfL+kwjbBQtG/uxp2Y4fSfqqAylCTqlocm3NWO7WvGRmE9dcjvTGCY1IOkYZnL7d/mIrLz3FsLH9KvvNp5UwyBuuzp69mXvcROphvFRBC88ofhlU/aJMXq4gQiniTo+cobRY28uO8IeBkFKRKCxYMctl8j4Soq/O0HU=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO0P123MB3979.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:184::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Feb
 2021 10:40:36 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3846.041; Mon, 15 Feb 2021
 10:40:35 +0000
To: 'Mike' <mikerd1@verizon.net>
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC OTT Block on E320
Thread-Index: AdcBMbPeiYyrqr/eQbmPfmK6sMotugAEt7AAAAM/DoAAA0TVgAAKJbgAAH2hgcA=
Date: Mon, 15 Feb 2021 10:40:35 +0000
Message-ID: <LNXP123MB372488AF5D8D50DFF85E9C90CA889@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
 <LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <9bc9093f-444f-453c-6fe0-5ccf05b570be@verizon.net>
 <1b9cf52b-6554-b066-f217-29f59ac2f14b@verizon.net>
In-Reply-To: <1b9cf52b-6554-b066-f217-29f59ac2f14b@verizon.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: verizon.net; dkim=none (message not signed)
 header.d=none;verizon.net; dmarc=none action=none header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f7294aa-9015-4497-5c7f-08d8d19e20cf
x-ms-traffictypediagnostic: LO0P123MB3979:
x-microsoft-antispam-prvs: <LO0P123MB39794CCBF98B1DAE10DBD6D5CA889@LO0P123MB3979.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ON30XWejdXRKLstc415mLPyN0fC22igrD4pE+PqNlEHe2C7LF5yjhsxh+/qgzTALTAEwsADCbbyh3Yj4YXaIwNeN4fz1RyX5IKEK0FdteU9LpmTPVyH7deO9KJy1Kvea7za6tpUDxsxDX36UvzZ9Xf7tDEkMGlhqk7f1wCAU8XXqyDeTPMgOydbg4ni/ZwY+axKPpDvZZzrS1+A/2EXoYi3NbQJ7hZK1nLNSstLt+p44kj30woyYlVf4VzPY0BjhyW0W9lm1gwVI0fH5BBBvjOXOqFMv6cmDKSCU6GE103eqcCh9adW8nhYpjf4GnHaZwfAmKmMBAHIThHGTP5KyXz/8W9NIYOcr4j2Lc1JlQwPy20Z0iPOloJmw2/E5GM7mxmdWa3neol4fov+Tkj7sxvCMiOX3UvNK+Z6akO1QR5LP1bqwBfSzlDRGh9NPL7hUSFEmagPqQD5G5y+7+XxyxLwItVfeyYoBp9dBv0lAbWG79p8F612e96UEmY/EhuwOU4VIdJsSZP9fivQ+w85GJ6w47PbJVTmYoLeSCmonds+x8Atl+URyQw+PELoj6j6YGyD/EzzL+hcRxPu80IcFTAGKRzSqa+v6gDePz8MHoBI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(39840400004)(346002)(136003)(5660300002)(86362001)(52536014)(53546011)(166002)(4326008)(186003)(71200400001)(2906002)(30864003)(6916009)(83380400001)(26005)(316002)(9686003)(7696005)(55016002)(6506007)(66476007)(66556008)(8676002)(66946007)(76116006)(8936002)(966005)(33656002)(64756008)(66446008)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?6HVMYlJBXZM2SsPTpEes1aRkjeflY2WHVt6ceDL91Hu/iRSlUDBNlZn0vE?=
 =?iso-8859-1?Q?mljROiqv5CHfAgmbVS5PqtxPmZ6vtG9CEBdDAC+ikbebjc2pFHC9BzFwMq?=
 =?iso-8859-1?Q?D05fDPIQ/QoliyE1lKnXVS2lFo7QOfnrG3vSEwcB/KBPSsYK1O1kI99IoL?=
 =?iso-8859-1?Q?K9QLuIT5r5VBWqMHBZ+/sVM3Am5vXNWdZjSPYCRpQdP+TmZbCrL0xBcWKp?=
 =?iso-8859-1?Q?n7GY0wf4mcVTN4IR7LbiYhG8GlEO9pbH+Qcr27ZgJ7eSjQmgH0cK5ySzQt?=
 =?iso-8859-1?Q?71FzfiAfG7zcTaQPgAsnovjxGIt7lscy6B80bXAA/g1qGUli6Qq+8VMt+K?=
 =?iso-8859-1?Q?X0toFt05HHf9mElfOgkbR/2AcDRNdwTLBbS12z+p3lv1O4ABPTb4J3JTWV?=
 =?iso-8859-1?Q?1tWrRCVxPYhZu8SgosSuGkHwH1ARns4aF8ohekgpIU9ZBPBnj+Xou1hiup?=
 =?iso-8859-1?Q?F63Sab8rl6Y2cyoGzTeiMDkNHeSaThhxvczRSnbK1A4f7kI+n1Gu8wgf5Y?=
 =?iso-8859-1?Q?ew97duV/utNBWvp71LczuDyRTePPE0recGnkGn13Hv4RFvIc/MhS0hCShx?=
 =?iso-8859-1?Q?uSSY15HQoY8xPD9BZO/RPqqIn/JvTaxEUhimp/SlHvv+sbdx83zoNmUd6l?=
 =?iso-8859-1?Q?fJvnEupVW7WjcCFa6HJ+3fONz/T39BBhi+X4TvxNAdIvY9si/M9JxHE6zH?=
 =?iso-8859-1?Q?QvNKwnHf4zEBFgHCYiPNGmvIL6kik1SOnbsxqmt4VAh+89ofJtSJ5MpzEn?=
 =?iso-8859-1?Q?TwCsYPExDNvZoXUMRDoIDN1mLuwze881JFEDV02nTS7/IZeodkFWnAkrfh?=
 =?iso-8859-1?Q?E5X1BipqNid84Kb4bJlzylFunENkDSl1kUPKn0U9muuOeKVK3HCNFo/w8K?=
 =?iso-8859-1?Q?QTzFpkz4UufRbbCRI5vk53FMdBQ7WU/dEhSoNxKYBITZFbYKIguKuWjhdg?=
 =?iso-8859-1?Q?ZSiJi9DKSkQgwx96SWFi9YrV95K3CR5UZDVI2HNHKHCiZMpksEHsuk/MiQ?=
 =?iso-8859-1?Q?ZlVN2GKRTTZ1lLT8j8pgDrP0j9sC5OY3eqJiEY3Dok/hVi/yiu8tytf+hR?=
 =?iso-8859-1?Q?5XyUkDMqH0BUFer+2XpC/lQ9PQWAEhO15/dJNDTcKHmOSjwHXvYd/JvbE2?=
 =?iso-8859-1?Q?PCxyzVPmYZdv6AHl1n0zJ4SRkCuZJutRgllo9q3mWBbqrSpwuguJAcPzVL?=
 =?iso-8859-1?Q?G0rArfQxGT5rQ+z8jG8luQQS+BRrd0vb8u4nHfFppAZ3xCo/7EKizkfKqt?=
 =?iso-8859-1?Q?Y9YAKHPp3igpVA246L55n0TZ/zSRtt86nYYRLqNZWkoRNocG73B4nAsgux?=
 =?iso-8859-1?Q?I5Offcw8vsbh/s8NA2nYhKa27i0Nw+dAYj457RBa1jEXvEyMRFk8MnRXLF?=
 =?iso-8859-1?Q?LCptQHtn6v?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f7294aa-9015-4497-5c7f-08d8d19e20cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2021 10:40:35.7418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XZT7gkq/PUixvbogEN/cfefdLlluZxy+hLzFnxfFU+kVIm9hhRWBWBRpWio1Z0R6DiJjxIph93tXQz6FTKajqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P123MB3979
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
Content-Type: multipart/mixed; boundary="===============9003321981253667111=="
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

--===============9003321981253667111==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB372488AF5D8D50DFF85E9C90CA889LNXP123MB3724GBRP_"

--_000_LNXP123MB372488AF5D8D50DFF85E9C90CA889LNXP123MB3724GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Mike,

Thanks for your input into this, it's really useful being able to talk over=
 this issue.

My system will be placing all the signal conditioning within the FPGA. The =
output from this is a relatively low data rate which I was hoping to stream=
 via the Ethernet connected to the ARM. There should be no need for us to u=
se the SFP+ interface. The ARM will not be doing any processing of the data=
, just passing it back to the host PC. I have just out of interest tried co=
nnecting via the SFP+ and get the same issue.

I am able to build the FPGA image with my block in, and upload this to the =
E320. My initial understanding of how a system as described above would wor=
k is the software on the Host PC would issue commands to the USRP to read a=
nd write registers in blocks as required to configure the device, for examp=
le the gain setting in the examples. The ARM wouldn't require any knowledge=
 of how the blocks worked, it just writes and reads to the address within t=
he blocks as instructed. This was what I thought Network Mode (as opposed t=
o Embedded Mode) meant, it was acting more or less like the USRPs without t=
he ARM.

As we're both seeing the same error then I'm not 100% sure that cross-compi=
ling the OOT code for the E320 will resolve the problem.  My GNU radio code=
 is running entirely on the host PC. I'll probably look more into the cross=
-compiling today as I'm running out of any other ideas to try.

The error I'm currently hitting is that when running the GNU radio flow gra=
ph with my new block I get the error
"Line 98, in __init__
  self.dilbert_dogbert_0=3Ddilbert.dogbert(
AttributeErroe:module 'dilbert' has no attribute'dogbert'"

What I have found that is if I enter Python on the command line and enter "=
import dilbert" followed by "dir(dilbert)" then it appears that there's not=
hing in this module other that the things like __builtins__ , __cached__,__=
doc__ ..... . There is no dogbert class within module, and this I think is =
the source of the issue.

Like you say, we could really do with a response from Ettus to throw some l=
ight on this. An update to Gain Block tutorials aimed at the E3xx devices w=
ould be really useful.

Mark

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Mike via=
 USRP-users
Sent: 12 February 2021 21:37
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RFNoC OTT Block on E320


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

--_000_LNXP123MB372488AF5D8D50DFF85E9C90CA889LNXP123MB3724GBRP_
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
span.EmailStyle22
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
<p class=3D"MsoNormal">Mike,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for your input into this, it&#8217;s really u=
seful being able to talk over this issue.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My system will be placing all the signal conditionin=
g within the FPGA. The output from this is a relatively low data rate which=
 I was hoping to stream via the Ethernet connected to the ARM. There should=
 be no need for us to use the SFP+
 interface. The ARM will not be doing any processing of the data, just pass=
ing it back to the host PC. I have just out of interest tried connecting vi=
a the SFP+ and get the same issue.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am able to build the FPGA image with my block in, =
and upload this to the E320. My initial understanding of how a system as de=
scribed above would work is the software on the Host PC would issue command=
s to the USRP to read and write registers
 in blocks as required to configure the device, for example the gain settin=
g in the examples. The ARM wouldn&#8217;t require any knowledge of how the =
blocks worked, it just writes and reads to the address within the blocks as=
 instructed. This was what I thought Network
 Mode (as opposed to Embedded Mode) meant, it was acting more or less like =
the USRPs without the ARM.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As we&#8217;re both seeing the same error then I&#82=
17;m not 100% sure that cross-compiling the OOT code for the E320 will reso=
lve the problem. &nbsp;My GNU radio code is running entirely on the host PC=
. I&#8217;ll probably look more into the cross-compiling
 today as I&#8217;m running out of any other ideas to try.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The error I&#8217;m currently hitting is that when r=
unning the GNU radio flow graph with my new block I get the error
<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;Line 98, in __init__ <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;self.dilbert_dogbert_0=3Ddilbert.dogbert=
( <o:p></o:p></p>
<p class=3D"MsoNormal">AttributeErroe:module &#8216;dilbert&#8217; has no a=
ttribute&#8217;dogbert&#8217;&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What I have found that is if I enter Python on the c=
ommand line and enter &#8220;import dilbert&#8221; followed by &#8220;dir(d=
ilbert)&#8221; then it appears that there&#8217;s nothing in this module ot=
her that the things like __builtins__ , __cached__,__doc__ &#8230;.. .
 There is no dogbert class within module, and this I think is the source of=
 the issue.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Like you say, we could really do with a response fro=
m Ettus to throw some light on this. An update to Gain Block tutorials aime=
d at the E3xx devices would be really useful.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:EN-GB"> USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;
<b>On Behalf Of </b>Mike via USRP-users<br>
<b>Sent:</b> 12 February 2021 21:37<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on E320<o:p></o:p></span><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
<a href=3D"mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounce=
s@lists.ettus.com&gt;</a>
<b>On Behalf Of </b>Mike via USRP-users<br>
<b>Sent:</b> 12 February 2021 13:40<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
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
<o:p></o:p></span></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
</div>
</body>
</html>

--_000_LNXP123MB372488AF5D8D50DFF85E9C90CA889LNXP123MB3724GBRP_--


--===============9003321981253667111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9003321981253667111==--

