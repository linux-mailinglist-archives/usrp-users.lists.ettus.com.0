Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DD710523D
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2019 13:24:12 +0100 (CET)
Received: from [::1] (port=42216 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iXlVH-0007OS-Vg; Thu, 21 Nov 2019 07:24:07 -0500
Received: from mail1.bemta25.messagelabs.com ([195.245.230.70]:51866)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1iXlVD-0007FY-WB
 for USRP-users@lists.ettus.com; Thu, 21 Nov 2019 07:24:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1574339002; i=@nkom.no;
 bh=52eDxy9CEUFlr1QoT/tf6xV4MilgJ91JJm/PXYPCHT8=;
 h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:MIME-Version;
 b=itH8/ngCLli/r8TGvYVjvADt84Wuai8Kz1Ma7LeJWcDQCTakFoB7NWfrPK2ZkSjy9
 od+wQYRzlS0WvXwY4tZcBJmdWM7SxEATe6grV2X2T85d8eilVM4xVzEeTO6msVV/N8
 0Je0fiE7qJNrZbXm/7+jzRi6s2r7ON7+odc0BYvHbYImJiM8pT9zsinA9DJH+ALaPk
 o36YmwYEUFRPEBhdrjvJ6HwRh1ix3w/LlFO1oIa0jq7MnsoQdaTuVVol10PgtfLD9w
 itKf7VFi3SSzuF780TSGiRgGBj3ok0mk4uA8/LYn2pzeeTxVBGYm2fUUdudSRFzroD
 a23f3ptK4TSZQ==
Received: from [46.226.52.196] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-6.bemta.az-b.eu-west-1.aws.symcld.net id 38/52-28136-AB186DD5;
 Thu, 21 Nov 2019 12:23:22 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFKsWRWlGSWpSXmKPExsViF5OXq7uz8Vq
 swYkpFhYXOuewOzB6TFx5iDmAMYo1My8pvyKBNePVutqCJYkVz79eZ25gfBXWxcjFISTQwihx
 cOUspi5GTg42AUeJ1ds/s4DYIgK2ElP33gCzhQW0JD5v+sIMEdeWWP70NlSNk8S7W5vAbBYBV
 Yl5/+6zgti8AnYSF65/Z4dYsJdR4l1fLztIglPAVeLu9Q6gIg4ORgFZiblNvCBhZgFxiRlH74
 DNkRAQkFiy5zwzhC0q8fLxP1YIW1HizsEZULaVxLaDj9kgbE2JhR8/MELYChLntp6BistL7H8
 5hRlifprEi6lnoW4TlDg58wnLBEbRWUhWz0JSNgtJGURcT+LG1ClsELa2xLKFr5khbF2JGf8O
 sSCLL2BkX8VokVSUmZ5RkpuYmaNraGCga2hopGtoaaZrZGCkl1ilm6SXWqpbnlpcomuol1her
 FdcmZuck6KXl1qyiREYlSkFR07tYDz09a3eIUZJDiYlUd6pytdihfiS8lMqMxKLM+KLSnNSiw
 8xynBwKEnwatYA5QSLUtNTK9Iyc4AJAiYtwcGjJMJbDZLmLS5IzC3OTIdInWK05Jjwcu4iZo6
 Pq5YAye8gUoglLz8vVUqc91Y1UIMASENGaR7cOFgSu8QoKyXMy8jAwCDEU5BalJtZgir/ilGc
 g1FJmHcpyBSezLwSuK2vgA5iAjpo49pLIAeVJCKkpBqY7Cb1R27lrZinwT1RiIf5bF7YuR3tv
 ww0L3qnWT6bvinr0XnnSG0dznK+B5ve+KWyvz5x+Gba4XnzVm+9tsfolPHspK2dy1NOzOA/nS
 11fteseOO7axYa/j1ec3mdImfKk+DY+Oldj+OXyazJ+hB0Y9pmuQXX+xRjN7KL1kUtC/4acX1
 9fFCyqazZm59fbhS7N1oJnmXz7mU17DTQ6w/mF/t7beLz4wYPdVl7957obVSRN1nDa7ni4anM
 7IsrPz+TLfPoyXAsFfE5ufHlubdBYRKmO6I3ilbYxhxwss/kYAqQnSVc+WHGjWdNXPGhx6ZZ9
 91w79i0gS0o5Ue8Xe+3WCO/bQtTEra23eycsltKiaU4I9FQi7moOBEAkb6UtN0DAAA=
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-13.tower-284.messagelabs.com!1574339001!1074043!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 16580 invoked from network); 21 Nov 2019 12:23:21 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-13.tower-284.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 21 Nov 2019 12:23:21 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Thu, 21 Nov 2019 13:23:20 +0100
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] E310 RFNoC image
Thread-Index: AdWZLCnHsJoqHaTiQkOJ5gEZ7l9tRgARZUaAAAMRPSwBuavoAA==
Date: Thu, 21 Nov 2019 12:23:19 +0000
Message-ID: <D71B2B9BB39CE44CACCAB6646DF20CFD48DCF781@exmbx01>
References: <D71B2B9BB39CE44CACCAB6646DF20CFD48DAD5A8@exmbx01>,
 <CAL263iyu=4WX8SpPUUu1ue+-sjsZUM0rvZVnd+taOJx9x8GC_Q@mail.gmail.com>
 <6647c899-4322-4059-b9d7-bf69ead4dedd@email.android.com>
In-Reply-To: <6647c899-4322-4059-b9d7-bf69ead4dedd@email.android.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.13.23]
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-25056.003
x-tm-as-result: No--24.821800-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [USRP-users] E310 RFNoC image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Skorstad=2CJ=C3=B8rn_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?iso-8859-1?Q?Skorstad=2CJ=F8rn?= <Joern.Skorstad@Nkom.no>
Content-Type: multipart/mixed; boundary="===============2267725624834985733=="
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

--===============2267725624834985733==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DCF781exmbx01_"

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DCF781exmbx01_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have successfully built an RFNoC image with a DDC, Window and FFT block u=
sing the recipe mentioned. Also I have been able to connect the blocks usin=
g the UHD library in a C++ program, and I am receiving FFT output to my pro=
gram. However, I am still only able to achieve an FFT size of max. 512 bins=
. Reading an older post it seems this is caused by some FPGA - host packet =
limit of 4000 bytes?

Anyone been able to achieve more than 512 bins FFT on an E310? I only need =
the magnitude data of the FFT, and from what I can see the SC16 format is a=
lso used when transferring magnitude, which means the imaginery part is not=
 used.

Is it possible to modify the FFT block to do a 1024 bin FFT, and send FFT m=
agnitude data on both real and imag bytes? I tried to look at the code, but=
 no luck... Eventually, is it possible to split the data transfer into seve=
ral blocks?

Jorn

Fra: Skorstad,J=F8rn <Joern.Skorstad@Nkom.no>
Sendt: tirsdag 12. november 2019 18:24
Til: Nate Temple <nate.temple@ettus.com>
Kopi: USRP-users@lists.ettus.com
Emne: Re: [USRP-users] E310 RFNoC image

Thanks Nate, I will try to install it as described below.

Jorn

12. nov. 2019 17:55 skrev Nate Temple <nate.temple@ettus.com<mailto:nate.te=
mple@ettus.com>>:
Hi Jorn,

The process for installing Xilinx Vivado WebPACK is fairly easy.

Download "Vivado Design Suite - HLx Editions - 2017.4  Full Product Install=
ation" from here:

https://www.xilinx.com/support/download/index.html/content/xilinx/en/downlo=
adNav/vivado-design-tools/archive.html

Decompress the tarball

Run "sudo ./xsetup"

When prompted to download the latest version, ignore and click "Continue", =
2017.4 is required.

Click Next, and agree to the EULA and other terms, click Next and keep the =
default /opt/Xilinx install prefix.

Click next through the rest of the menus and "install"

You'll now have Vivado installed to /opt/Xilinx/Vivado/2017.4 and can use i=
t with the build tools as described in the previously linked app note.



Regards,
Nate Temple

On Mon, Nov 11, 2019 at 11:56 PM Skorstad,J=F8rn via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi list,

I have followed the application note https://kb.ettus.com/Software_Developm=
ent_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Sourc=
e to set up a cross compile environment for an E310 SDR. It works well, how=
ever I have not been able to get past chapter 7: Building a custom RFNoC FP=
GA Image, as I haven't set up Vivado 2017.4, as required.

I would like to experiment with RFNoC development also. The application not=
e states =ABA future application note will cover a step-by-step install gui=
de for Vivado=BB. Until this application note is ready, is it possible to u=
se an image built by someone else using this software version? (UHD_3.14.1.=
HEAD-0-gbfb9c1c7). If so, where could I eventually download it? What I need=
 is 1xwindow, 1xFFT, 1xFIFO and 1xFosphor if there is space left. Radio and=
 DDC is already on FPGA available as blocks?

Regards,
Jorn
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DCF781exmbx01_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EpostStil18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EpostStil19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">I have suc=
cessfully built an RFNoC image with a DDC, Window and FFT block using the r=
ecipe mentioned. Also I have been able to connect
 the blocks using the UHD library in a C&#43;&#43; program, and I am receiv=
ing FFT output to my program. However, I am still only able to achieve an F=
FT size of max. 512 bins. Reading an older post it seems this is caused by =
some FPGA &#8211; host packet limit of 4000 bytes?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Anyone bee=
n able to achieve more than 512 bins FFT on an E310? I only need the magnit=
ude data of the FFT, and from what I can see the
 SC16 format is also used when transferring magnitude, which means the imag=
inery part is not used.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Is it poss=
ible to modify the FFT block to do a 1024 bin FFT, and send FFT magnitude d=
ata on both real and imag bytes? I tried to look
 at the code, but no luck&#8230; Eventually, is it possible to split the da=
ta transfer into several blocks?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Jorn<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Fra:</span></b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif"> Skorstad,J=F8rn &lt;Joern.Skors=
tad@Nkom.no&gt;
<br>
<b>Sendt:</b> tirsdag 12. november 2019 18:24<br>
<b>Til:</b> Nate Temple &lt;nate.temple@ettus.com&gt;<br>
<b>Kopi:</b> USRP-users@lists.ettus.com<br>
<b>Emne:</b> Re: [USRP-users] E310 RFNoC image<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Thanks Nate, I will try to install it as described b=
elow. <o:p>
</o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Jorn&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">12. nov. 2019 17:55 skrev Nate Temple &lt;<a href=3D=
"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt;:<o:p></o:p></p=
>
</div>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif">Hi Jorn,<br>
<br>
The process for installing Xilinx Vivado WebPACK is fairly easy. <br>
<br>
Download &quot;Vivado Design Suite - HLx Editions - 2017.4 &nbsp;Full Produ=
ct Installation&quot; from here:<br>
<br>
<a href=3D"https://www.xilinx.com/support/download/index.html/content/xilin=
x/en/downloadNav/vivado-design-tools/archive.html">https://www.xilinx.com/s=
upport/download/index.html/content/xilinx/en/downloadNav/vivado-design-tool=
s/archive.html</a><br>
<br>
Decompress the tarball<br>
<br>
Run &quot;sudo ./xsetup&quot;<br>
<br>
When prompted to download the latest version, ignore and click &quot;Contin=
ue&quot;, 2017.4 is required.<br>
<br>
Click Next, and agree to the EULA and other terms, click Next and keep the =
default /opt/Xilinx install prefix.<br>
<br>
Click next through the rest of the menus and &quot;install&quot;<br>
<br>
You'll now have Vivado installed to /opt/Xilinx/Vivado/2017.4 and can use i=
t with the build tools as described in the previously linked app note.<br>
<br>
<br>
<br>
Regards,<br>
Nate Temple<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Nov 11, 2019 at 11:56 PM Skorstad,J=F8rn via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi list,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I have followed the application note
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" target=3D"_blank">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a> to set up a cross compile envir=
onment for an E310 SDR. It works well, however I have not been able to get =
past chapter 7: Building a custom
 RFNoC FPGA Image, as I haven&#8217;t set up Vivado 2017.4, as required. <o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I would like to experiment with RFNoC development also. The applic=
ation note states =ABA future application note will cover a step-by-step in=
stall guide for Vivado=BB. Until this application
 note is ready, is it possible to use an image built by someone else using =
this software version? (UHD_3.14.1.HEAD-0-gbfb9c1c7). If so, where could I =
eventually download it? What I need is 1xwindow, 1xFFT, 1xFIFO and 1xFospho=
r if there is space left. Radio
 and DDC is already on FPGA available as blocks?<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Jorn<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_D71B2B9BB39CE44CACCAB6646DF20CFD48DCF781exmbx01_--


--===============2267725624834985733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2267725624834985733==--

