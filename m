Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1D86D27F
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 19:04:35 +0200 (CEST)
Received: from [::1] (port=51034 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ho9pY-0006Mz-Jg; Thu, 18 Jul 2019 13:04:32 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:16741)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@opensdr.com>) id 1ho9pS-0005rQ-PD
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 13:04:26 -0400
Received: (qmail 18056 invoked by uid 1003); 18 Jul 2019 17:03:44 -0000
Received: from unknown (HELO ?100.146.144.209?)
 (philip@opensdr.com@172.56.6.175)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 18 Jul 2019 17:03:43 -0000
Date: Thu, 18 Jul 2019 19:03:39 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <CAL263iz_HaODktCA9=Ham5wXQgB=-MsrxXSgzfdTM1EwqHmDKA@mail.gmail.com>
References: <3d28bc6e-1f89-f7dd-f507-7c1f65865c16@eit.uni-kl.de>
 <CAL263iz_HaODktCA9=Ham5wXQgB=-MsrxXSgzfdTM1EwqHmDKA@mail.gmail.com>
MIME-Version: 1.0
To: Nate Temple <nate.temple@ettus.com>,
 Nate Temple via USRP-users <usrp-users@lists.ettus.com>,
 Andreas Weinand <weinand@eit.uni-kl.de>
Message-ID: <6EABBFAB-F129-4E17-9C7C-41021CE13E0C@opensdr.com>
Subject: Re: [USRP-users] USRP E312 configuration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@opensdr.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2028023322071561399=="
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

--===============2028023322071561399==
Content-Type: multipart/alternative; boundary="----TEN5XHZEWKCI18W2I35AK99XNNIAEE"
Content-Transfer-Encoding: 7bit

------TEN5XHZEWKCI18W2I35AK99XNNIAEE
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Why not post the instructions to the list and save people a bunch of time g=
etting to this point?

Philip


On July 18, 2019 7:00:01 PM GMT+02:00, Nate Temple via USRP-users <usrp-us=
ers@lists=2Eettus=2Ecom> wrote:
>Hi Andreas,
>
>The errors you see when loading the idle FPGA can be safely ignored and
>are
>fixed in the new MPM based file system=2E
>
>We have a pending update for that application note that uses modern UHD
>that will be posted soon=2E I can follow up with you off list with the
>instructions for now=2E
>
>Regards,
>Nate Temple
>
>On Thu, Jul 18, 2019 at 9:36 AM Andreas Weinand via USRP-users <
>usrp-users@lists=2Eettus=2Ecom> wrote:
>
>> Hello,
>>
>> has someone already sucessfully made the E312 running using RFNOC
>> scripts? like in the example in
>>
>>
>https://kb=2Eettus=2Ecom/Software_Development_on_the_E3xx_USRP_-_Building=
_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>>
>>
>> Unfortunately, i got the similar errors when following these
>> instructions as reported here before (e=2Eg=2E
>>
>>
>http://lists=2Eettus=2Ecom/pipermail/usrp-users_lists=2Eettus=2Ecom/2018-=
March/056028=2Ehtml
>> )=2E I tried a lot of OS, UHD, gnuradio and gr-ettus combinations but
>all
>> ended in some errors like this earlier or later=2E
>>
>> I am currently trying with Ubuntu 18=2E04=2E, if anyone has a working
>setup,
>> please let me know=2E Other OS are also fine for me=2E
>>
>> BR
>>
>> Andreas
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists=2Eettus=2Ecom
>> http://lists=2Eettus=2Ecom/mailman/listinfo/usrp-users_lists=2Eettus=2E=
com
>>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------TEN5XHZEWKCI18W2I35AK99XNNIAEE
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Why not post the instructions to the list and save=
 people a bunch of time getting to this point?<br><br>Philip<br><br><br><di=
v class=3D"gmail_quote">On July 18, 2019 7:00:01 PM GMT+02:00, Nate Temple =
via USRP-users &lt;usrp-users@lists=2Eettus=2Ecom&gt; wrote:<blockquote cla=
ss=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px s=
olid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,h=
elvetica,sans-serif">Hi Andreas,<br><br>The errors you see when loading the=
 idle FPGA can be safely ignored and are fixed in the new MPM based file sy=
stem=2E<br><br>We have a pending update for that application note that uses=
 modern UHD that will be posted soon=2E I can follow up with you off list w=
ith the instructions for now=2E <br><br>Regards,<br>Nate Temple</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Jul 18, 2019 at 9:36 AM Andreas Weinand via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists=2Eettus=2Ecom">usrp-users@lists=2Eettus=2Ecom</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0=2E8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<=
br>
<br>
has someone already sucessfully made the E312 running using RFNOC <br>
scripts? like in the example in <br>
<a href=3D"https://kb=2Eettus=2Ecom/Software_Development_on_the_E3xx_USRP_=
-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" rel=3D"noreferrer"=
 target=3D"_blank">https://kb=2Eettus=2Ecom/Software_Development_on_the_E3x=
x_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a> <br>
<br>
<br>
Unfortunately, i got the similar errors when following these <br>
instructions as reported here before (e=2Eg=2E <br>
<a href=3D"http://lists=2Eettus=2Ecom/pipermail/usrp-users_lists=2Eettus=
=2Ecom/2018-March/056028=2Ehtml" rel=3D"noreferrer" target=3D"_blank">http:=
//lists=2Eettus=2Ecom/pipermail/usrp-users_lists=2Eettus=2Ecom/2018-March/0=
56028=2Ehtml</a> <br>
)=2E I tried a lot of OS, UHD, gnuradio and gr-ettus combinations but all =
<br>
ended in some errors like this earlier or later=2E<br>
<br>
I am currently trying with Ubuntu 18=2E04=2E, if anyone has a working setu=
p, <br>
please let me know=2E Other OS are also fine for me=2E<br>
<br>
BR<br>
<br>
Andreas<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists=2Eettus=2Ecom" target=3D"_blank">USRP-u=
sers@lists=2Eettus=2Ecom</a><br>
<a href=3D"http://lists=2Eettus=2Ecom/mailman/listinfo/usrp-users_lists=2E=
ettus=2Ecom" rel=3D"noreferrer" target=3D"_blank">http://lists=2Eettus=2Eco=
m/mailman/listinfo/usrp-users_lists=2Eettus=2Ecom</a><br>
</blockquote></div>
</blockquote></div><br>-- <br>Sent from my Android device with K-9 Mail=2E=
 Please excuse my brevity=2E</body></html>
------TEN5XHZEWKCI18W2I35AK99XNNIAEE--


--===============2028023322071561399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2028023322071561399==--

