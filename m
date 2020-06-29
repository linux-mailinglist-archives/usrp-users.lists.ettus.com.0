Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB72C20CD37
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2020 10:17:43 +0200 (CEST)
Received: from [::1] (port=57810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jpoyy-0004eB-EL; Mon, 29 Jun 2020 04:17:40 -0400
Received: from smtpmail1.tawazun.ae ([195.229.210.164]:41166)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <seshan.govender@tawazunti.ae>) id 1jpoyt-0004Yl-DN
 for usrp-users@lists.ettus.com; Mon, 29 Jun 2020 04:17:36 -0400
IronPort-PHdr: =?us-ascii?q?9a23=3AaiYj6Bw5pfl4K+/XCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?0usQKvad9pjvdHbS+e9qxAeQG9mCtrQd2rWd6vGocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTqwbalvIBiyrwjdudQajI9/Iast1xXFpWdFdf?=
 =?us-ascii?q?5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPGAz/83rqALM?=
 =?us-ascii?q?TRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VSi+46ptVRTlkz?=
 =?us-ascii?q?kMOSIn/27Li8xwlKNbrwynpxxj2I7ffYWZOONjcq/BYd8WQGxMVdtTWSNcGIOx?=
 =?us-ascii?q?d4sBAfQcM+ZEoYfzpFoOogexCgS3HuPj1j1Ii2Xq0aEmz+ssFxzN0gw6H9IJtX?=
 =?us-ascii?q?TZtMj7O7kJUeC11qbIyyjIYfJR2Tfj9ofIdA0uru+WXbltdsfR0lcgFxjFjlqK?=
 =?us-ascii?q?r4zpJTyV1uMTs2eF6epvSPygi3Q8pgFtuDeuyN0ji4jUhoIT1lDE9D91z5wrKt?=
 =?us-ascii?q?ChTkNwfNGrHodKuS6AK4t2Xt0tQ3tuuCsi1rEIt4O2cScExZk6yRPSaeKLf5SI?=
 =?us-ascii?q?7B79VOidPDZ1iG94dL+wiRu8/latx/PyWMS73lhGsCVIn8TMuH0D1xLe9s6KQe?=
 =?us-ascii?q?Zz8Eem3DaAzQHT6udcLE8qiarbN4MhwqUqmpUPtkTDGzf6mFnsg66YbEol+/Wo?=
 =?us-ascii?q?6+L9brr8uJCRMZJ/hALmMqk2h8CyBfo0PhITU2Wa+umwzr7u8VDjTLlXkPE6ir?=
 =?us-ascii?q?TVvZTEKcgBu6K0AgxY3pwt5hqlEjur0ckUkH8aJ1xfYh2HlZLmO1TWLfD9Cvew?=
 =?us-ascii?q?nkqjnS9wx/DDIr3hGpLNLmXfkLv5fbZy9UpcyA0rwN1D6ZxaFLEOLvXvV0Dxu9?=
 =?us-ascii?q?PWExg3PxCoz+r5Etl9ypkRWGyVDa6YLaPSt0WE6fgxLOWUZY8VvijyK+Q96vLz?=
 =?us-ascii?q?iXI1h0URcbSo0JYUcny1HelqL1+EbXbymtsBFH0Fvgs6TOzkkl2CVjtTam6pX6?=
 =?us-ascii?q?0i/TE7CJipDYHZSoCih7yBwjm0HptLaW9YEFCBCmvoeJ+KWvgWaSOSP8lhkiAF?=
 =?us-ascii?q?VbS7UYAuywmitBXmxLp/MurU5ioYuIrh2tdv/O3cjxcy+SZqAsuH1WGBVWN7nm?=
 =?us-ascii?q?IMRzAr3aB/u019ylKY3Khlh/xXDsZf6OhXXQ0iL57T0/R6C8zuWgLGZtqJVU2m?=
 =?us-ascii?q?Qs++AT0oU9Ix2MEBY1xmG9i5ihDD3jGqA6MOl7CRGpM07r7c32XqJ8pn13nG06?=
 =?us-ascii?q?wh3BEaRZ4FBEyCqo9F1i2bT67AiEyf342jc+5UiA7E726Fi0GHugdpUQp8UL/E?=
 =?us-ascii?q?WFgCYkGQp9mvoguIUqS0EfE6KQZb0uaGK7BWcZvkkUlbX7HoP9GUKzasgH2oQA?=
 =?us-ascii?q?uTy6mXRI7rYHkGmijBFFUf1QsU+CDVGxI5A3KarnneBTomOlXxbkXg/PM2/Gi2?=
 =?us-ascii?q?VU89yUeFaFNs0ba44DYJjOOVWe4VwrNCsSp3+GY8J0q0w9+DU4nInAFmZqgJJI?=
 =?us-ascii?q?pluA4bh1KcjBR0O9mbF44nnkQXKlglo0rx3gdqDJlB18En/itznVhCbJmA2VYE?=
 =?us-ascii?q?TAu2mJX5O7nZMG73pUz9d6fJ00PD1sqXvK4Cuqxh9gfT+TqxH09nyE1JltlY13?=
 =?us-ascii?q?zGuMfjIDYtdLvObH0Sr0Ag4a3TfSAv+oWS3HA+aaQ=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EuAAD+ovle/wxRqMBgHAEBAQEBAQcBA?=
 =?us-ascii?q?RIBAQQEAQFHgTAGAQELAYEiWIEegTMKh3CNS4EBhEiUPhSBWAsFCwEBAQEBAQE?=
 =?us-ascii?q?BAQMBAwEYAQoMBAEBhEcCgiwdBgYxCA4CEAEBBgEBAQEBAwMEAQEChkQMgjcpA?=
 =?us-ascii?q?YFxLAg7GTwSAQEdAQEBAQQDAQEfCAFAHQcPBAQBAQYBAQEYAQYJBRAPAgoUCQk?=
 =?us-ascii?q?BBAERAQgGgxmDC5Avmk81gVVTGoNoTUCEH4EwEIE4AYFkgS6ERgKDbYEtgUw/J?=
 =?us-ascii?q?muCW3OBfl4DAoEdAQEDBQESAS8JCAgFCoVABI54CSMBIYQ7hHCBQQWJboVdgwy?=
 =?us-ascii?q?GZlwoB4JfgQcEC4VrAoFEhiqEGV2FTCmCczaIdYUOA4k6gg+CHI99gVGKGZQ8A?=
 =?us-ascii?q?gICAgkCFYFUAWEUKXBNc4ICZwlHFwJijm0BAkaCA4pWdAI1AgYBBwEBAwmNaYE?=
 =?us-ascii?q?zgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2EuAAD+ovle/wxRqMBgHAEBAQEBAQcBARIBAQQEAQFHgTA?=
 =?us-ascii?q?GAQELAYEiWIEegTMKh3CNS4EBhEiUPhSBWAsFCwEBAQEBAQEBAQMBAwEYAQoMB?=
 =?us-ascii?q?AEBhEcCgiwdBgYxCA4CEAEBBgEBAQEBAwMEAQEChkQMgjcpAYFxLAg7GTwSAQE?=
 =?us-ascii?q?dAQEBAQQDAQEfCAFAHQcPBAQBAQYBAQEYAQYJBRAPAgoUCQkBBAERAQgGgxmDC?=
 =?us-ascii?q?5Avmk81gVVTGoNoTUCEH4EwEIE4AYFkgS6ERgKDbYEtgUw/JmuCW3OBfl4DAoE?=
 =?us-ascii?q?dAQEDBQESAS8JCAgFCoVABI54CSMBIYQ7hHCBQQWJboVdgwyGZlwoB4JfgQcEC?=
 =?us-ascii?q?4VrAoFEhiqEGV2FTCmCczaIdYUOA4k6gg+CHI99gVGKGZQ8AgICAgkCFYFUAWE?=
 =?us-ascii?q?UKXBNc4ICZwlHFwJijm0BAkaCA4pWdAI1AgYBBwEBAwmNaYEzgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.75,294,1589227200"; 
 d="png'150?scan'150,208,217,150";a="18163919"
Authentication-Results: smtpmail1.tawazun.ae;
 spf=None smtp.pra=seshan.govender@tawazunti.ae; 
 spf=None smtp.mailfrom=seshan.govender@tawazunti.ae;
 spf=None smtp.helo=postmaster@Tawazun.ae
To: "YILDIRIM  Hasan Can" <Hasan.Can.Yildirim@ulb.be>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Index: AdZN7W4Kmdc4VKYnR6STslmU8feFSg==
Date: Mon, 29 Jun 2020 08:16:03 +0000
Message-ID: <0a1b927f476948ebadd97db76487db7a@tawazunti.ae>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-bjprotectivemarking: <?xml version="1.0" encoding="us-ascii"?><sisl
 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" sislVersion="0"
 policy="711208ef-c286-4531-9c27-1d2be8c1f7a7" origin="userSelected"
 xmlns="http://www.boldonjames.com/2008/01/sie/internal/label"><element
 uid="id_classification_nonbusiness" value="" /></sisl>
bjclassification: Public
x-symprex-messageprocessed: true
x-symprex-signatureinjected: false
x-bj-exc-itemchecked: e130ef1f-f20a-4f4c-b3ac-a3c52962dc15e420a159-554a-4423-adf9-6063a7045700
MIME-Version: 1.0
X-bj-exc-ItemProcessed: e130ef1f-f20a-4f4c-b3ac-a3c52962dc15e420a159-554a-4423-adf9-6063a7045700
X-bj-exc-processed-messageID: <0a1b927f476948ebadd97db76487db7a@tawazunti.ae>
Subject: [USRP-users] [Public]RE:  RE: X310 questions[Public]
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
From: Seshan Govender via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Seshan Govender <seshan.govender@tawazunti.ae>
Content-Type: multipart/mixed; boundary="===============4203449407429583806=="
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

--===============4203449407429583806==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_0a1b927f476948ebadd97db76487db7atawazuntiae_";
	type="multipart/alternative"

--_005_0a1b927f476948ebadd97db76487db7atawazuntiae_
Content-Type: multipart/alternative;
	boundary="_000_0a1b927f476948ebadd97db76487db7atawazuntiae_"

--_000_0a1b927f476948ebadd97db76487db7atawazuntiae_
Content-Type: text/plain; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

Classification: Public



Dear Hasan,



Thanks for your detailed feedback. It definitely helps.

I still have one question about the X310 streaming issues that I am having



In order to solve my streaming issues, I would like to utilize the SRAM bas=
ed FIFO in the RFNOC by loading the RFNOC image to the X310. Currently I do=
 not have Vivado set up ready, and I would like to use an existing images f=
or X310. Hence, can you point or provide me to a X310 RFNOC FPGA images tha=
t are compatible with UHD V15.0 or the latest UHD version rfnoc 4.0.0 .



Regards,

Seshan











From: YILDIRIM Hasan Can <Hasan.Can.Yildirim@ulb.be>
Sent: Thursday, June 25, 2020 12:56 PM
To: usrp-users@lists.ettus.com; Seshan Govender <seshan.govender@tawazunti.=
ae>
Subject: Re: [USRP-users] [Internal Use Only]RE: X310 questions[Internal Us=
e Only]



Hi Seshan,



Here are some answers.


gnuradio UHD-USRP sink with two channels 100-200Msps



I have spent plenty of time with x310s, and as far as I have seen, gnuradio=
 is not a reliable option for high sampling rates. I am not a computer scie=
ntist, however, in summary, gnuradio uses python which uses C/C++, then the=
 machine language etc. So, essentially, if you use gnuradio/python, there i=
s an extra layer of conversion between different layers. That conversion ca=
uses latency. Hence, you have underruns. In order to go high sampling rates=
, I use the UHD libraries and customized C/C++ codes.



1. Is it possible to achieve 2 x 200Msp with dual 10GBe without using DPDK?=
 if so what are the necessary configurations that have to be made using gnu=
radio?

There is no straight answer to this question. First of all, the hardware on=
 your PC tower plays an important role, since the amount of incoming\outgoi=
ng data is massive (400 million samples per second, with otw=3Dsc16, 12bill=
ion bits per second!). Second, what is the size of the data? For example, i=
f you are considering Wi-Fi frames composed of, lets say 50k samples, than =
this might be possible at these sampling rates. Moreover, I suggest you to =
run an explicit command to save the incoming data directly on the RAM, then=
 to the HDD. Otherwise, your HDD may/will not be able to keep up with the r=
ate of incoming data.



Is another image required for the x310 (other than the bit image files down=
loaded from ettus) in order to enable stream on both 10GBe at the same time=
?

Normally, no.





2. What is the max sample rate feasible using one 10GBe.

I am not sure if I see the question. 10GBe means 10 gigabit per second =3D =
1.25 megabyte per second. The sample rate, however, depends on how many bit=
s are used to represent one sample. In other words, if it is fc32, then the=
 machine uses 32 bits for I and 32 bits for Q samples.



3. How can we enable to stream out using dual 10GBe in gnuradio?







4. I tried to install DPDK also but was not successful in running it. Which=
 version of DPDK is recommended with uhd 3.15. What are the exact procedure=
s for setting up DPDK.

https://files.ettus.com/manual/page_dpdk.html





5. It is required to transmit a band of a signal (bandwidth lower than the =
sampling rate) using Gnu-radio and x310. However, the output from the X310 =
is distorted as shown in the attached file. Also the signal is extended to =
the full band equal to the sampling rate. This happens by using 16bit integ=
er samples.



This is quite strange. What type of signal are you using? If it is OFDM, ma=
ke sure that only the subcarriers inside your 'band' are allocated, while t=
he rest are set to zero.



Moreover, the signal obtained from the X310 is different when using 12 bit =
int wire, the output extends the full band but is not the same as the input=
 signal.

If I remember correctly, the default otw is 16 bit, which means that the sa=
mples have higher resolution, better quality. If you use 12bits to represen=
t the same samples, there will be quantization errors.



Good luck,

Hasan



  _____

From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Seshan Govender via USRP-users <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, June 17, 2020 6:08 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] [Internal Use Only]RE: X310 questions[Internal Use On=
ly]



Classification: Internal Use Only



Hi,



We have recently purchased a x310 and are busy testing it=92s capabilities.

We would like to use the x310 to stream out and receive wideband signals at=
 a sample rate of 100Msps and 200Msps. I have connected 2 x 10Gbe, however =
when using the gnuradio UHD-USRP sink with two channels, I get Underruns or=
 Late packets error at sample rate of 66.7Msps and above. The same error ha=
ppens also with the UHD benchmark tool. However, it works with one channel,=
 with one 10Gbe connected at a sample rate of 200Msps, with few underruns i=
n the beginning.



I have the following questions:



1. Is it possible to achieve 2 x 200Msp with dual 10GBe without using DPDK?=
 if so what are the necessary configurations that have to be made using gnu=
radio? Is another image required for the x310 (other than the bit image fil=
es downloaded from ettus) in order to enable stream on both 10GBe at the sa=
me time?



2. What is the max sample rate feasible using one 10GBe.



3. How can we enable to stream out using dual 10GBe in gnuradio?



4. I tried to install DPDK also but was not successful in running it. Which=
 version of DPDK is recommended with uhd 3.15. What are the exact procedure=
s for setting up DPDK.



5. It is required to transmit a band of a signal (bandwidth lower than the =
sampling rate) using Gnu-radio and x310. However, the output from the X310 =
is distorted as shown in the attached file. Also the signal is extended to =
the full band equal to the sampling rate. This happens by using 16bit integ=
er samples.

Moreover, the signal obtained from the X310 is different when using 12 bit =
int wire, the output extends the full band but is not the same as the input=
 signal.



6. Moreover, I want to use RFnoc with UHD 3.15, however I do not have vivad=
o to compile RFnoc for this version. Are there existing images for RFnoc co=
mpatible with the latest version of UHD 3.15? We would want the RFNOC image=
 bit file for X310 that contains Replay block.



Any help would be appreciated and I am also posting this to the gnuradio ma=
iling list.



Regards

Seshan





=D3=ED=D4=C7=E4 =CC=E6=DD=ED=E4=CF=D1

=C3=CE=D5=C7=C6=ED =C7=C8=CD=C7=CB

=C7=E1=C8=CD=CB =E6=C7=E1=CA=D8=E6=ED=D1 =C7=E1=CA=DF=E4=E6=E1=E6=CC=ED

PO BOX 908

Abu Dhabi

United Arab Emirates

Seshan Govender

Research Specialist

Research and Technology Development

D

F+9712665 3133

www.tawazun.ae <https://www.tawazun.ae>

  <https://www.tawazun.ae>







This email is classified by seshan.govender as Internal Use Only on 6/17/20=
20 8:08:27 AM.

Disclaimer and Confidentiality Notice:

E-mails sent from or on behalf of Tawazun Economic Council, its subsidiarie=
s and affiliates (=93Tawazun=94) may contain information which may be confi=
dential, privileged and/or subject to copyright, and/or constitute a trade =
secret (=93Tawazun Information=94). If you are not the intended recipient o=
f this email, you may not disclose, copy or use its contents. If an email i=
s received in error, please notify the sender immediately and delete it and=
 any copies from your systems. Tawazun may monitor electronic communication=
s sent and received, for the purposes of ensuring compliance with our legal=
 and regulatory obligations and internal policies. Please click here<https:=
//www.tawazun.ae/website-terms/> to access the terms and conditions applica=
ble to the use of Tawazun Information. Emails are not a secure method of co=
mmunication. They can be intercepted and cannot be guaranteed to be error o=
r virus free. No responsibility is accepted by Tawazun for any loss or dama=
ge arising in any way from this email.



This email is classified by seshan.govender as Public on 6/29/2020 12:15:20=
 PM.


--_000_0a1b927f476948ebadd97db76487db7atawazuntiae_
Content-Type: text/html; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
256">
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.xmsochpdefault, li.xmsochpdefault, div.xmsochpdefault
	{mso-style-name:x_msochpdefault;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
span.xmsohyperlink
	{mso-style-name:x_msohyperlink;
	color:#0563C1;
	text-decoration:underline;}
span.xmsohyperlinkfollowed
	{mso-style-name:x_msohyperlinkfollowed;
	color:#954F72;
	text-decoration:underline;}
span.xemailstyle17
	{mso-style-name:x_emailstyle17;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1640574577;
	mso-list-type:hybrid;
	mso-list-template-ids:-1310696700 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Classification:
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#00C000">Public</span><span style=3D"font-family:&quot;Calibri&q=
uot;,sans-serif;color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Dear Hasan,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Thanks for your detailed feedback. It definitely helps.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">I still have one question about the X310 streaming issue=
s that I am having<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">In order to solve my streaming issues, I would like to u=
tilize the SRAM based FIFO in the RFNOC by loading the RFNOC image to the X=
310. Currently I do not have Vivado set up ready,
 and I would like to use an existing images for X310. Hence, can you point =
or provide me to a X310 RFNOC FPGA images that are compatible with UHD V15.=
0 or the latest UHD version rfnoc 4.0.0 .
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">Seshan</span><span style=3D"font-size:9.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"margin-top:37.5pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"0" style=3D"width:547.3pt;margin-left:4.5pt">
<tbody>
<tr>
<td width=3D"378" valign=3D"bottom" style=3D"width:292.7pt;padding:.75pt .7=
5pt .75pt .75pt">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#555759"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"357" valign=3D"bottom" style=3D"width:254.6pt;padding:.75pt .7=
5pt .75pt 22.5pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#555759"><o:p>&nbsp;</o:p></span></p>
</div>
</td>
</tr>
<tr>
<td width=3D"736" colspan=3D"2" valign=3D"bottom" style=3D"width:547.3pt;pa=
dding:.75pt .75pt .75pt .75pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#555759"><img width=3D"730" height=3D"13" style=3D"width:7.6041in=
;height:.1319in" id=3D"_x0000_i1028" src=3D"cid:image001.png@01D64E0E.F55AD=
E10"></span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#555759">&nbsp;</span><span style=3D"font-family:&quot;Aria=
l&quot;,sans-serif;color:#555759">
<o:p></o:p></span></p>
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> YILDIRIM Hasan Can &lt;Hasan.C=
an.Yildirim@ulb.be&gt;
<br>
<b>Sent:</b> Thursday, June 25, 2020 12:56 PM<br>
<b>To:</b> usrp-users@lists.ettus.com; Seshan Govender &lt;seshan.govender@=
tawazunti.ae&gt;<br>
<b>Subject:</b> Re: [USRP-users] [Internal Use Only]RE: X310 questions[Inte=
rnal Use Only]<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">Hi Seshan,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">Here are some answers.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><br>
<i><u>gnuradio UHD-USRP sink with two channels 100-200Msps</u></i><o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;background:white"><spa=
n style=3D"font-family:Consolas;color:black">I have spent plenty of time wi=
th x310s, and as far as I have seen, gnuradio is not a reliable option for =
high sampling rates. I am not a computer
 scientist, however, in summary, gnuradio uses python which uses C/C&#43;&#=
43;, then the machine language etc. So, essentially, if you use gnuradio/py=
thon, there is an extra layer of conversion between different layers. That =
conversion causes latency. Hence, you have
 underruns. In order to go high sampling rates, I use the UHD libraries and=
 customized C/C&#43;&#43; codes.<br>
<br>
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><i><u><span style=3D"font=
-family:Consolas;color:black">1. Is it possible to achieve 2 x 200Msp with =
dual 10GBe without using DPDK? if so what are the necessary configurations =
that have to be made using gnuradio?&nbsp;</span></u></i><span style=3D"fon=
t-family:Consolas;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">There is no straight answer to this question. First=
 of all, the hardware on your PC tower plays an important role, since the a=
mount of incoming\outgoing data is massive
 (400 million samples per second, with otw=3Dsc16, 12billion bits per secon=
d!). Second, what is the size of the data? For example, if you are consider=
ing Wi-Fi frames composed of, lets say 50k samples, than this might be poss=
ible at these sampling rates. Moreover,
 I suggest you to run an explicit command to save the incoming data directl=
y on the RAM, then to the HDD. Otherwise, your HDD may/will not be able to =
keep up with the rate of incoming data.&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><i><u><span style=3D"font=
-family:Consolas;color:black">Is another image required for the x310 (other=
 than the bit image files downloaded from ettus) in order to enable stream =
on both 10GBe at the same time?</span></u></i><span style=3D"font-family:Co=
nsolas;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">Normally, no.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><i><u><span style=3D"font=
-family:Consolas;color:black">2. What is the max sample rate feasible using=
 one 10GBe.</span></u></i><span style=3D"font-family:Consolas;color:black">=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">I am not sure if I see the question. 10GBe means 10=
 gigabit per second =3D 1.25 megabyte per second. The sample rate, however,=
 depends on how many bits are used to represent
 one sample. In other words, if it is fc32, then the machine uses 32 bits f=
or I and 32 bits for Q samples.&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><i><u><span style=3D"font=
-family:Consolas;color:black">3. How can we enable to stream out using dual=
 10GBe in gnuradio?</span></u></i><span style=3D"font-family:Consolas;color=
:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><i><u><span style=3D"font=
-family:Consolas;color:black">4. I tried to install DPDK also but was not s=
uccessful in running it. Which version of DPDK is recommended with uhd 3.15=
. What are the exact procedures for setting
 up DPDK.</span></u></i><span style=3D"font-family:Consolas;color:black"><o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><a href=3D"https://files.ettus.com/manual/page_dpdk=
.html">https://files.ettus.com/manual/page_dpdk.html</a><o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><i><u><span style=3D"font=
-family:Consolas;color:black">5. It is required to transmit a band of a sig=
nal (bandwidth lower than the sampling rate) using Gnu-radio and x310. Howe=
ver, the output from the X310 is distorted
 as shown in the attached file. Also the signal is extended to the full ban=
d equal to the sampling rate. This happens by using 16bit integer samples.<=
/span></u></i><span style=3D"font-family:Consolas;color:black"><o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">This is quite strange. What type of signal are you =
using? If it is OFDM, make sure that only the subcarriers inside your 'band=
' are allocated, while the rest are set
 to zero.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><i><u><span style=3D"font=
-family:Consolas;color:black">Moreover, the signal obtained from the X310 i=
s different when using 12 bit int wire, the output extends the full band bu=
t is not the same as the input signal.
</span></u></i><span style=3D"font-family:Consolas;color:black"><o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">If I remember correctly, the default otw is 16 bit,=
 which means that the samples have higher resolution, better quality. If yo=
u use 12bits to represent the same samples,
 there will be quantization errors.&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">Good luck,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">Hasan<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:Consolas;color:black">&nbsp;<o:p></o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"3" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> USRP-u=
sers &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com">usrp-users-b=
ounces@lists.ettus.com</a>&gt;
 on behalf of Seshan Govender via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, June 17, 2020 6:08 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] [Internal Use Only]RE: X310 questions[Internal=
 Use Only]</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:black">Classification:
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:blue">Internal Use Only</span><o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Hi,&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">We have recently purchased a x310 and are busy test=
ing it=92s capabilities.<o:p></o:p></p>
<p class=3D"xmsonormal">We would like to use the x310 to stream out and rec=
eive wideband signals at a sample rate of 100Msps and 200Msps. I have conne=
cted 2 x 10Gbe, however when using the gnuradio UHD-USRP sink with two chan=
nels, I get Underruns or Late packets
 error at sample rate of 66.7Msps and above. The same error happens also wi=
th the UHD benchmark tool. However, it works with one channel, with one 10G=
be connected at a sample rate of 200Msps, with few underruns in the beginni=
ng.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">I have the following questions:<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">1. Is it possible to achieve 2 x 200Msp with dual 1=
0GBe without using DPDK? if so what are the necessary configurations that h=
ave to be made using gnuradio? Is another image required for the x310 (othe=
r than the bit image files downloaded
 from ettus) in order to enable stream on both 10GBe at&nbsp;the same time?=
 <o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">2. What is the max sample rate feasible using one 1=
0GBe.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">3. How can we enable to stream out using dual 10GBe=
 in gnuradio?
<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">4. I tried to install DPDK also but was not success=
ful in running it. Which version of DPDK is recommended with uhd 3.15. What=
 are the exact procedures for setting up DPDK.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">5. It is required to transmit a band of a signal (b=
andwidth lower than the sampling rate) using Gnu-radio and x310. However, t=
he output from the X310 is distorted as shown in the attached file. Also th=
e signal is extended to the full band
 equal to the sampling rate. This happens by using 16bit integer samples.&n=
bsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Moreover, the signal obtained from the X310 is diff=
erent when using 12 bit int wire, the output extends the full band but is n=
ot the same as the input signal.&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">6. Moreover, I want to use RFnoc with UHD 3.15, how=
ever I do not have vivado to compile RFnoc for this version. Are there exis=
ting images for RFnoc compatible with the latest version of UHD 3.15?&nbsp;=
We would want the RFNOC image bit file
 for X310 that contains&nbsp;Replay block. <o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Any help would be appreciated and I am also posting=
 this to the gnuradio mailing list.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Regards&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Seshan&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:.75pt .75pt .75pt .75pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:.75pt 22.5pt 11.25pt 18.75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal" align=3D"right" style=3D"text-align:right"><b><span=
 lang=3D"AR-SA" dir=3D"RTL" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#CE502A">=D3=ED=D4=C7=E4 =CC=E6=DD=ED=E4=CF=D1</s=
pan></b><o:p></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal" align=3D"right" style=3D"text-align:right"><span la=
ng=3D"AR-SA" dir=3D"RTL" style=3D"font-size:10.0pt;font-family:&quot;Arial&=
quot;,sans-serif;color:black">=C3=CE=D5=C7=C6=ED =C7=C8=CD=C7=CB</span><o:p=
></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal" align=3D"right" style=3D"text-align:right"><span la=
ng=3D"AR-SA" dir=3D"RTL" style=3D"font-size:10.0pt;font-family:&quot;Arial&=
quot;,sans-serif;color:black">=C7=E1=C8=CD=CB =E6=C7=E1=CA=D8=E6=ED=D1 =C7=
=E1=CA=DF=E4=E6=E1=E6=CC=ED</span><o:p></o:p></p>
</div>
</td>
<td valign=3D"bottom" style=3D"padding:.75pt .75pt 11.25pt .75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal"><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:black">PO BOX 908&nbsp;</span><span style=3D"fo=
nt-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">
</span><o:p></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal"><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:black">Abu Dhabi&nbsp;</span><span style=3D"fon=
t-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">
</span><o:p></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal"><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:black">United Arab Emirates&nbsp;</span><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k">
</span><o:p></o:p></p>
</div>
</td>
</tr>
<tr>
<td valign=3D"bottom" style=3D"padding:.75pt 22.5pt .75pt 18.75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal" align=3D"right" style=3D"text-align:right"><b><span=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
CE502A">Seshan Govender</span></b><o:p></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal" align=3D"right" style=3D"text-align:right"><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k">Research Specialist</span><o:p></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal" align=3D"right" style=3D"text-align:right"><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k">Research and Technology Development</span><o:p></o:p></p>
</div>
</td>
<td valign=3D"bottom" style=3D"padding:.75pt .75pt .75pt .75pt">
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal"><b><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,sans-serif;color:#CE502A">D</span></b><o:p></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal"><b><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,sans-serif;color:#CE502A">F</span></b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">&#43;9712665=
 3133</span><o:p></o:p></p>
</div>
<div style=3D"margin-bottom:3.75pt">
<p class=3D"xmsonormal"><b><span style=3D"font-size:9.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#CE502A"><a href=3D"https://www.tawazun.ae"><=
span style=3D"font-size:10.0pt;color:#CE502A;text-decoration:none">www.tawa=
zun.ae
</span></a></span></b><o:p></o:p></p>
</div>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"339" valign=3D"bottom" style=3D"width:225.0pt;padding:.75pt .7=
5pt .75pt 22.5pt">
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:#555759"><a href=3D"https://www.tawazun.ae"><sp=
an style=3D"color:#CE502A;text-decoration:none"><img border=3D"0" width=3D"=
250" height=3D"125" style=3D"width:2.6041in;height:1.3055in" id=3D"x__x005f=
_x0000_i1026" src=3D"cid:image003.png@01D64E0E.597CAD20" alt=3D"SIGNATURE_L=
OGO"></span><span style=3D"font-size:10.0pt;color:#CE502A;text-decoration:n=
one">&nbsp;</span><span style=3D"color:#CE502A;text-decoration:none">
</span></a></span><o:p></o:p></p>
</div>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"bottom" style=3D"padding:.75pt .75pt .75pt .75p=
t">
<div>
<p class=3D"xmsonormal"><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:#555759"><img border=3D"0" width=3D"730" height=
=3D"13" style=3D"width:7.6041in;height:.1388in" id=3D"x__x005f_x0000_i1025"=
 src=3D"cid:image001.png@01D64E0E.F55ADE10"></span><span style=3D"font-size=
:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#555759">&nbsp;</spa=
n><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;=
color:#555759">
</span><o:p></o:p></p>
</div>
</td>
</tr>
</tbody>
</table>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal"><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:black">This email is classified by
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#002060">seshan.govender
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:black">as
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:blue">Internal Use Only</span><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:black"> on
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#F00000">6/17/2020 8:08:27 AM</span><span style=3D"font-size:10.=
0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">.
</span><o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:7.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif">Disclaimer and Confidentiality Notice:
<o:p></o:p></span></u></b></p>
</div>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:7.5pt;font-family:&quot;Arial&quot;,sans-serif">E-mails sent from or on b=
ehalf of Tawazun Economic Council, its subsidiaries and affiliates (=93Tawa=
zun=94) may contain information which may be confidential,
 privileged and/or subject to copyright, and/or constitute a trade secret (=
=93Tawazun Information=94). If you are not the intended recipient of this e=
mail, you may not disclose, copy or use its contents. If an email is receiv=
ed in error, please notify the sender
 immediately and delete it and any copies from your systems. Tawazun may mo=
nitor electronic communications sent and received, for the purposes of ensu=
ring compliance with our legal and regulatory obligations and internal poli=
cies. Please
<a href=3D"https://www.tawazun.ae/website-terms/"><b><span style=3D"color:b=
lack">click here</span></b></a> to access the terms and conditions applicab=
le to the use of Tawazun Information. Emails are not a secure method of com=
munication. They can be intercepted
 and cannot be guaranteed to be error or virus free. No responsibility is a=
ccepted by Tawazun for any loss or damage arising in any way from this emai=
l.
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">This email is classified by
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#002060">seshan.govender
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:black">as
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#00C000">Public</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,sans-serif;color:black"> on
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:#F00000">6/29/2020 12:15:20 PM</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">.
<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_0a1b927f476948ebadd97db76487db7atawazuntiae_--

--_005_0a1b927f476948ebadd97db76487db7atawazuntiae_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=12846;
	creation-date="Mon, 29 Jun 2020 08:16:03 GMT";
	modification-date="Mon, 29 Jun 2020 08:16:03 GMT"
Content-ID: <image003.png@01D64E0E.597CAD20>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAPoAAAB9CAYAAACLWX5dAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAG
hGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0w
TXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRh
LyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDUgNzkuMTYzNDk5LCAyMDE4LzA4LzEz
LTE2OjQwOjIyICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3Jn
LzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0i
IiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRw
Oi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMu
YWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNv
bS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9z
VHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0Mg
MjAxOSAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMTktMDktMDFUMTM6NDg6MTYrMDQ6
MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE5LTA5LTAxVDEzOjU4OjI1KzA0OjAwIiB4bXA6TWV0YWRh
dGFEYXRlPSIyMDE5LTA5LTAxVDEzOjU4OjI1KzA0OjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIg
cGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9InNSR0IgSUVDNjE5
NjYtMi4xIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjE3NmMyYTA5LTUyNmYtNDJmZS1iNDEw
LTA4ZmQxMzI0ZDYwNyIgeG1wTU06RG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjc2
ZGIzYTgwLWFiYTQtZDQ0ZS05MzVlLWRkNTljNWUxNGYwNCIgeG1wTU06T3JpZ2luYWxEb2N1bWVu
dElEPSJ4bXAuZGlkOjEwMGFlNmFkLTFjNzEtNGQ0OC04NzU0LWM4NGVjZTAxOWU3ZSI+IDxwaG90
b3Nob3A6RG9jdW1lbnRBbmNlc3RvcnM+IDxyZGY6QmFnPiA8cmRmOmxpPkE0QkVFMTRDNUZEMUJB
MjJEODI1N0YzNEJBNjExMTNFPC9yZGY6bGk+IDwvcmRmOkJhZz4gPC9waG90b3Nob3A6RG9jdW1l
bnRBbmNlc3RvcnM+IDx4bXBNTTpIaXN0b3J5PiA8cmRmOlNlcT4gPHJkZjpsaSBzdEV2dDphY3Rp
b249ImNyZWF0ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MTAwYWU2YWQtMWM3MS00ZDQ4
LTg3NTQtYzg0ZWNlMDE5ZTdlIiBzdEV2dDp3aGVuPSIyMDE5LTA5LTAxVDEzOjQ4OjE2KzA0OjAw
IiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoTWFjaW50b3No
KSIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5p
aWQ6MTc2YzJhMDktNTI2Zi00MmZlLWI0MTAtMDhmZDEzMjRkNjA3IiBzdEV2dDp3aGVuPSIyMDE5
LTA5LTAxVDEzOjU4OjI1KzA0OjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3No
b3AgQ0MgMjAxOSAoTWFjaW50b3NoKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwv
eG1wTU06SGlzdG9yeT4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+
IDw/eHBhY2tldCBlbmQ9InIiPz68Zz/iAAArUElEQVR4nO2dd3gVVdrAfzO3pocECEWCtISQAKE3
xYpItay6n4JlV13rrotgXxWQohTRXZUi2NZVQJEqVXpNqAkEQgglhPR6U26/M98fSS653CSEkELI
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
P9gZmw8iIUYoAAAAAElFTkSuQmCC

--_005_0a1b927f476948ebadd97db76487db7atawazuntiae_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=407;
	creation-date="Mon, 29 Jun 2020 08:16:03 GMT";
	modification-date="Mon, 29 Jun 2020 08:16:03 GMT"
Content-ID: <image001.png@01D64E0E.F55ADE10>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAtoAAAANCAYAAACXSsmNAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAEsSURBVHhe7dxBTsJAFIDh10KxEvUGxB0nwI0J
p0BuZOJpOISs8QTGG7BWQFpssRutxMTAyu/bTCYvmfWfSWaSXSUAAICjSpsVAAA4IqENAAAnILQB
AOAEhDYAAJzAwceQRVFEkiTNDgAAqNX5nKbpr63cCu3lchmLxVNsq9Du9bLqoGYAAAD/Wh3GSRTF
dh/aw+EwrgeD6HS7n+NvWqH9OJ/H/f1DdLIs+v08ylJpAwBArQ7s9Wq1b+TpdBJ3k0lcXV40069a
of38/BKz2Sy2ZRl5nseuWgEAgCqe0yQ2600V3J0Yj29jNLqJs17WTL9qhXZZlPH2+hbvZX0l3omq
tJsJAAD8c0la5XGxv9k+z/PoZj9Hdu3gY0gAAODvfO8HAAAnILQBAODoIj4AyZFc+N45g4MAAAAA
SUVORK5CYII=

--_005_0a1b927f476948ebadd97db76487db7atawazuntiae_--


--===============4203449407429583806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4203449407429583806==--

