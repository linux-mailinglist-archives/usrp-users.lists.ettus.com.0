Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A76872CFC36
	for <lists+usrp-users@lfdr.de>; Sat,  5 Dec 2020 18:04:26 +0100 (CET)
Received: from [::1] (port=46774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klayt-0000lW-7U; Sat, 05 Dec 2020 12:04:23 -0500
Received: from postman.dtnt.info ([62.219.91.51]:59534)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1klayp-0000fl-0f
 for usrp-users@lists.ettus.com; Sat, 05 Dec 2020 12:04:19 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id 1D8754A5DD
 for <usrp-users@lists.ettus.com>; Sat,  5 Dec 2020 19:03:04 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id E4A229F974
 for <usrp-users@lists.ettus.com>; Sat,  5 Dec 2020 19:02:58 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FREsmwrZwx18 for <usrp-users@lists.ettus.com>;
 Sat,  5 Dec 2020 19:02:57 +0200 (IST)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by o.dtnt.email (Postfix) with ESMTPSA id 255259FB80
 for <usrp-users@lists.ettus.com>; Sat,  5 Dec 2020 19:02:56 +0200 (IST)
Received: by mail-oi1-f180.google.com with SMTP id h3so10149131oie.8
 for <usrp-users@lists.ettus.com>; Sat, 05 Dec 2020 09:02:56 -0800 (PST)
X-Gm-Message-State: AOAM532us4BfCJEQ7n5aFCvZFF9qKrvOaTc4733faiNlTZJoCRH6Xhhk
 T/oXm4M6IDl68DCvAImfnRgxKzo5oayFsszzH5I=
X-Google-Smtp-Source: ABdhPJy86+Rh1XB3pCw46dowc8mzvsZfx8X2NnG40XL2G0HM1V9uDeciNsW17YotRzq119KEnEcVyluqGXRS4TqINKI=
X-Received: by 2002:aca:498e:: with SMTP id w136mr6971312oia.147.1607187775030; 
 Sat, 05 Dec 2020 09:02:55 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSxO=0GoV5V07cjZt2N=BTGOifrs758xHS+snj7bQTXzGQ@mail.gmail.com>
 <CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com>
In-Reply-To: <CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com>
Date: Sat, 5 Dec 2020 19:02:44 +0200
X-Gmail-Original-Message-ID: <CACDReSwkJRVUoqoTksWBDuoHf8Mo+5p3ua7kWRRNSVuA6S8+TA@mail.gmail.com>
Message-ID: <CACDReSwkJRVUoqoTksWBDuoHf8Mo+5p3ua7kWRRNSVuA6S8+TA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
Cc: Ofer Saferman <ofer@navigicom.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 1D8754A5DD.A9137
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: Re: [USRP-users] Using GPS disciplining on E310
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============3819774113553527924=="
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

--===============3819774113553527924==
Content-Type: multipart/alternative; boundary="0000000000006b0e7305b5ba9025"

--0000000000006b0e7305b5ba9025
Content-Type: text/plain; charset="UTF-8"

Hello Rob,

Thanks for the response.
I am not trying to get the LOs to sync in phase. I know that is not
possible unless I use a common external LO. I have a method to find and
cancel the phase difference of caused by the LOs.
I am only trying to get the base-band Tx samples to be synced.
I was wondering whether the 1-PPS signal synchronizes the 10 MHz references
of all E310 in frequency or in phase.

Regarding your other question - I plan to run the software on each of the
E310 independently without any host computer. Thus, if the clocks of the
units can be synced I can set the transmission to start 1 minute in the
future (or something similar) and I am hoping since the clocks are truly
synced to get synced base-band Tx samples on different E310 units.

Regards,
Ofer Saferman

On Fri, Dec 4, 2020 at 10:46 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Ofer,
> Here is my understanding
> - The E310 can sync to a PPS signal (either external input or obtained
> from GPS).  From this PPS, the E310 derives the 10MHz ref signal and uses
> that as ref for LO signal.  So, there will be lots of phase variation
> between the LOs in all of your E310 devices even though they will all be
> trying to stay in sync with a 1 pulse-per-second signal.
> - Regarding your time synchronization question, there are examples of
> setting the E310 clock (using set_time_next_pps, I think) to match the GPS
> clock.  Thus, all of your E310s could have the same time.  But, how do you
> plan to control all of your E310s when you want the transmit to turn on?
> Will you have an SSH session to each of them?
> Rob
>
> On Fri, Dec 4, 2020 at 2:28 PM Ofer Saferman via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>> I would like to synchronize several E310 devices.
>> It is my understanding that the only way to do that is by connecting a
>> GPS antenna and performing disciplining to a derived 1-PPS signal.
>> I have a few questions to help me better understand how to make it work:
>> 1. Does GPS disciplining achieve frequency lock between devices or phase
>> lock?
>> 2. How to start transmitting at the exact moment on all synchronized
>> devices? Can the unit clock be synchronized to GPS clock? and then just
>> start the transmission with some delay from unit clock on all devices? Can
>> someone share the relevant C commands to perform the time synchronization
>> to GPS clock or point to a relevant code example?
>>
>> Thanks,
>> Ofer Saferman
>>
>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean. _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000006b0e7305b5ba9025
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Rob,</div><div><br></div><div>Thanks for the re=
sponse.</div><div>I am not trying to get the LOs to sync in phase. I know t=
hat is not possible unless I use a common external LO. I have a method to f=
ind and cancel the phase difference of caused by the LOs.<br></div><div>I a=
m only trying to get the base-band Tx samples to be synced.</div><div>I was=
 wondering whether the 1-PPS signal synchronizes the 10 MHz references of a=
ll E310 in frequency or in phase.</div><div><br></div><div>Regarding your o=
ther question - I plan to run the software on each of the E310 independentl=
y without any host computer. Thus, if the clocks of the units can be synced=
 I can set the transmission to start 1 minute in the future (or something s=
imilar) and I am hoping since the clocks are truly synced to get synced bas=
e-band Tx samples on different E310 units.</div><div><br></div><div>Regards=
,</div><div>Ofer Saferman<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 4, 2020 at 10:46 PM Rob Koss=
ler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div dir=3D"ltr">Hi Ofer,<div>Here is my understanding</div><div>- The E310=
 can sync to a PPS signal (either external input or obtained from GPS).=C2=
=A0 From this PPS, the E310 derives the 10MHz ref signal and uses that as r=
ef for LO signal.=C2=A0 So, there will be lots of phase variation between t=
he LOs in all of your E310 devices even though they will all be trying to s=
tay in sync with a 1 pulse-per-second signal.</div><div>- Regarding your ti=
me synchronization question, there are examples of setting the E310 clock (=
using set_time_next_pps, I think) to match the GPS clock.=C2=A0 Thus, all o=
f your E310s could have the same time.=C2=A0 But, how do you plan to contro=
l all of your E310s when you want the transmit to turn on?=C2=A0 Will you h=
ave an SSH session to each of them?=C2=A0</div><div>Rob</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 4,=
 2020 at 2:28 PM Ofer Saferman via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hello,</div><div>I would like to synchronize several E310 dev=
ices.</div><div>It is my understanding that the only way to do that is by c=
onnecting a GPS antenna and performing disciplining to a derived 1-PPS sign=
al.</div><div>I have a few questions to help me better understand how to ma=
ke it work:</div><div>1. Does GPS disciplining achieve frequency lock betwe=
en devices or phase lock?</div><div>2. How to start transmitting at the exa=
ct moment on all synchronized devices? Can the unit clock be synchronized t=
o GPS clock? and then just start the transmission with some delay from unit=
 clock on all devices? Can someone share the relevant C commands to perform=
 the time synchronization to GPS clock or point to a relevant code example?=
</div><div><br></div><div>Thanks,</div><div>Ofer Saferman<br></div><div><br=
></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000006b0e7305b5ba9025--


--===============3819774113553527924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3819774113553527924==--

