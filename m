Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7AE43BB9C
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 22:32:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F91538413C
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 16:32:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RTwnYSDm";
	dkim-atps=neutral
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 6657C38414E
	for <usrp-users@lists.ettus.com>; Tue, 26 Oct 2021 16:30:33 -0400 (EDT)
Received: by mail-il1-f171.google.com with SMTP id 3so577702ilq.7
        for <usrp-users@lists.ettus.com>; Tue, 26 Oct 2021 13:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/u5bjHfcZl3++P083k3fG9XH8kvQl1rb1oJbdMX1ZZ8=;
        b=RTwnYSDmO3Q9QHfs0rH0V6iEXq+12HNhuqfzRoikBZ+mJk3dV9oPA4At9Bp46XVrWV
         os36yjGIN/+OO49iN8TJsAo0X5zA8NBE0CbC5XJ1eH9a9JEyNvog2QJ66s8D9Rnx31Um
         hfkRUYV3/e5CQi//kg0SepU7Ughdhf8135r1eeY42wysx0R/fiPSiP2IUR+jb//KQXL+
         tU1x3AipD/0aI4GHvrgQSW9m2K2fE9tQ0CflkGfXItf1CY9QGPCP90iXdvB34Ot0v0y4
         +iX52C894H/hNaJTISxXtvSSTycirK7uO0hHEnnnTN7Jq1FhyZ4cDq0AQPNA+iY9pomg
         vIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/u5bjHfcZl3++P083k3fG9XH8kvQl1rb1oJbdMX1ZZ8=;
        b=vKop0zW1X/TPFUeicn5xmq087UfbKGCyfxbcaTRDFa7JjcWiAck7RjgrOD47fM9EgO
         51F3z+wEDcG3RLVy50vRuMbVskYKZJHwdmAoTs7xlZmpijwr7nYetCbIFAtutxA/HEBp
         OvzIsdBF1yE9hInlgMw7ADYpW2zE8Q1giFuQAsCh7I5hX2m9YaUTimrHyXsGrUrhPntZ
         1ou3I9XoCPnuF1BMJC1olsFH3txhTUHgz/oJVWiJ89Cubtpx8cWN3C9i9Ms4sMJ8b00a
         jf18Cpas0EWex5VvLrrJn8QSMUiGswUdL0Tgil1aloxRYGkxNvxpOaXQZTiPQAisxluV
         oMpA==
X-Gm-Message-State: AOAM533dcRRM+iHXnEdUUaodZhZRRCo20BnL5RwAoElwQJExzm/P3jlb
	U32ePMJlgRl2Tsbn1AO6OOq5VwhGJIwRt9yEtgI=
X-Google-Smtp-Source: ABdhPJzHdEJ7osMRGpWrB1gwSlldLTZKAQZQ06DC1dfA4KLs9nrMFwqVWqxmIyyFq3e8ddje5xgkaCtFOkXcK53Wi6M=
X-Received: by 2002:a92:b105:: with SMTP id t5mr16275180ilh.152.1635280232555;
 Tue, 26 Oct 2021 13:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
 <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com> <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
 <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com> <CAPRRyxsi1Ay+z1VC8eAa49v=2Z8sB3rptrPD+3=bh-OZNAqmDw@mail.gmail.com>
 <9db5f18f-ec4b-fc6b-fb65-bcef88563bab@gmail.com> <CAPRRyxttDqNtknAo=owrQk6S9-2wMkdv-iuNr7jDXxoe5P=oEA@mail.gmail.com>
 <VE1PR04MB6653DF0BBF0BCB770B15AD56BA829@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <CAL7q81sehQr=j+33w60JRShgNWOsjNPZditMd20hnVek1m6JnQ@mail.gmail.com>
In-Reply-To: <CAL7q81sehQr=j+33w60JRShgNWOsjNPZditMd20hnVek1m6JnQ@mail.gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Tue, 26 Oct 2021 23:30:21 +0300
Message-ID: <CAPRRyxsw5SF9Zi2-yOdwZ8MSRPOsNELCbqouYRzJCg3w7u0J=A@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: MEF6UBH35266YKSJOYEVL26QNIYTCUVN
X-Message-ID-Hash: MEF6UBH35266YKSJOYEVL26QNIYTCUVN
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ming You <M.You@lboro.ac.uk>, discuss-gnuradio <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MEF6UBH35266YKSJOYEVL26QNIYTCUVN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6942136433589072515=="

--===============6942136433589072515==
Content-Type: multipart/alternative; boundary="0000000000005ea9a405cf475960"

--0000000000005ea9a405cf475960
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I fixed all the bugs but the result remained the same. ((


=D0=B2=D1=82, 26 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 04:14, Jonathon Pe=
ndlum <jonathon.pendlum@ettus.com>:

> Hi Ivan,
>
> Ming is correct. You need to modify this line:
>
> - { srcblk: window0, srcport: out_0, dstblk: fft0,  dstport: *in0* }
>
> to
>
> - { srcblk: window0, srcport: out_0, dstblk: fft0,  dstport: *in_0* }
>
> Jonathon
>
> On Sun, Oct 24, 2021 at 4:04 PM Ming You <M.You@lboro.ac.uk> wrote:
>
>> Hi Ivan,
>>
>> I think you might also check the typos, as I think for the fft0 module
>> from Ettus should have input port name "in_0" and output port name "out_=
0",
>> unless you've modified it.
>>
>> Hope this helps and good luck!
>>
>> Thanks,
>> Ming
>>
>> ________________________________________
>> From: Ivan Zahartchuk <adray0001@gmail.com>
>> Sent: 24 October 2021 17:40
>> To: Marcus D. Leech
>> Cc: discuss-gnuradio; usrp-users
>> Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
>>
>> ** THIS MESSAGE ORIGINATED OUTSIDE LOUGHBOROUGH UNIVERSITY **
>>
>> Be wary of links or attachments, especially if the email is unsolicited
>> or you don't recognise the sender's email address.
>>
>> I read the manual. And I tried to do everything according to the
>> instructions and existing examples. The yaml source file also uses
>> x300_radio block
>>
>> =D0=B2=D1=81, 24 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 18:17, Marcus D=
. Leech <patchvonbraun@gmail.com
>> <mailto:patchvonbraun@gmail.com>>:
>> On 2021-10-23 5:58 p.m., Ivan Zahartchuk wrote:
>>
>> I want to create FPGA firmware for USRP E310 with window function but I
>> get the error I described above. My yaml file is also attached above. I
>> need to do windowing and FFT on the FPGA side. And understand why FFT
>> returns zero values even when it is configured to produce complex data.
>>
>> [image.png]
>>
>> =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 17:55, Marcus D=
. Leech <patchvonbraun@gmail.com
>> <mailto:patchvonbraun@gmail.com>>:
>> On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:
>>
>> Yes I am setting fft for magnitudes. On the front side, I am doing a log=
.
>> I perfectly understand where infinity comes from. I don=E2=80=99t unders=
tand why
>> the FFT returns 0. But how can I configure the Window?
>>
>> What does uhd_usrp_probe show in the "RFNOC Blocks" section on this
>> device?
>>
>> I think the window RFNOC function in GNu Radio takes a list of the windo=
w
>> values as a parameter--you can populate that with any of the window.*
>> functions
>>   within Gnu Radio.
>>
>>
>> =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Marcus D=
. Leech <patchvonbraun@gmail.com
>> <mailto:patchvonbraun@gmail.com>>:
>> On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:
>>
>>
>> Hello, I have a problem that when receiving samples from the USRP E310
>> board, after the FFT block at low gain, zero values are received. After
>> that I log them and get infinity. I wanted to figure out what the proble=
m
>> is, but I have no idea, maybe the Window block will fix the situation. B=
ut
>> when building my yaml file, I get the error:
>> [ERR] 2 Unresolved connection(s)
>> [ERR]     (window0-out_0 -> fft0-in0)
>> [ERR]     (fft0-out_0 -> ep1-in_0)
>> [INF]         (('radio0', 'ctrl_port', 'master'),)
>> [INF]         (('radio0', 'time_keeper', 'listener'),)
>> [INF]         (('radio0', 'x300_radio', 'slave'),)
>> [INF]         (('_device_', 'ctrlport_radio', 'slave'),)
>> [INF]         (('_device_', 'time_keeper', 'broadcaster'),)
>> [INF]         (('_device_', 'x300_radio', 'master'),)
>> Please tell me what could be the problem and how can I add the Window
>> block to my image?
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:
>> usrp-users@lists.ettus.com>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:
>> usrp-users-leave@lists.ettus.com>
>>
>>
>> Do you have your FFT configured for log output?  Because the logarithm o=
f
>> zero is undefined.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:
>> usrp-users@lists.ettus.com>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:
>> usrp-users-leave@lists.ettus.com>
>>
>> I noticed looking at your .yaml file that it references x300_radio
>> blocks, and since this is an E310, that may not be appropriate?  I know
>> that there have
>>   historically been considerable differences between the X300 RFNOC radi=
o
>> blocks and those for E310.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000005ea9a405cf475960
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">I fixed all the bugs b=
ut the result remained the same. ((</span></pre></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 26 =D0=BE=D0=
=BA=D1=82. 2021 =D0=B3. =D0=B2 04:14, Jonathon Pendlum &lt;<a href=3D"mailt=
o:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt;:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Ivan,=
<div><br></div><div>Ming is correct. You need to modify=C2=A0this line:</di=
v><div><br></div><div>- { srcblk: window0, srcport: out_0, dstblk: fft0, =
=C2=A0dstport: <b>in0</b> }<br></div><div><br></div><div>to</div><div><br><=
/div><div>- { srcblk: window0, srcport: out_0, dstblk: fft0, =C2=A0dstport:=
 <b>in_0</b> }<br></div><div><br></div><div>Jonathon</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 24, 2=
021 at 4:04 PM Ming You &lt;<a href=3D"mailto:M.You@lboro.ac.uk" target=3D"=
_blank">M.You@lboro.ac.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Hi Ivan,<br>
<br>
I think you might also check the typos, as I think for the fft0 module from=
 Ettus should have input port name &quot;in_0&quot; and output port name &q=
uot;out_0&quot;, unless you&#39;ve modified it.<br>
<br>
Hope this helps and good luck!<br>
<br>
Thanks,<br>
Ming<br>
<br>
________________________________________<br>
From: Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail.com" target=3D"=
_blank">adray0001@gmail.com</a>&gt;<br>
Sent: 24 October 2021 17:40<br>
To: Marcus D. Leech<br>
Cc: discuss-gnuradio; usrp-users<br>
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph<br>
<br>
** THIS MESSAGE ORIGINATED OUTSIDE LOUGHBOROUGH UNIVERSITY **<br>
<br>
Be wary of links or attachments, especially if the email is unsolicited or =
you don&#39;t recognise the sender&#39;s email address.<br>
<br>
I read the manual. And I tried to do everything according to the instructio=
ns and existing examples. The yaml source file also uses x300_radio block<b=
r>
<br>
=D0=B2=D1=81, 24 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 18:17, Marcus D. L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patch=
vonbraun@gmail.com</a>&lt;mailto:<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;&gt;:<br>
On 2021-10-23 5:58 p.m., Ivan Zahartchuk wrote:<br>
<br>
I want to create FPGA firmware for USRP E310 with window function but I get=
 the error I described above. My yaml file is also attached above. I need t=
o do windowing and FFT on the FPGA side. And understand why FFT returns zer=
o values even when it is configured to produce complex data.<br>
<br>
[image.png]<br>
<br>
=D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 17:55, Marcus D. L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patch=
vonbraun@gmail.com</a>&lt;mailto:<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;&gt;:<br>
On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:<br>
<br>
Yes I am setting fft for magnitudes. On the front side, I am doing a log. I=
 perfectly understand where infinity comes from. I don=E2=80=99t understand=
 why the FFT returns 0. But how can I configure the Window?<br>
<br>
What does uhd_usrp_probe show in the &quot;RFNOC Blocks&quot; section on th=
is device?<br>
<br>
I think the window RFNOC function in GNu Radio takes a list of the window v=
alues as a parameter--you can populate that with any of the window.* functi=
ons<br>
=C2=A0 within Gnu Radio.<br>
<br>
<br>
=D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Marcus D. L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patch=
vonbraun@gmail.com</a>&lt;mailto:<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;&gt;:<br>
On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:<br>
<br>
<br>
Hello, I have a problem that when receiving samples from the USRP E310 boar=
d, after the FFT block at low gain, zero values are received. After that I =
log them and get infinity. I wanted to figure out what the problem is, but =
I have no idea, maybe the Window block will fix the situation. But when bui=
lding my yaml file, I get the error:<br>
[ERR] 2 Unresolved connection(s)<br>
[ERR]=C2=A0 =C2=A0 =C2=A0(window0-out_0 -&gt; fft0-in0)<br>
[ERR]=C2=A0 =C2=A0 =C2=A0(fft0-out_0 -&gt; ep1-in_0)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;ctrl_port&#=
39;, &#39;master&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;time_keeper=
&#39;, &#39;listener&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;radio0&#39;, &#39;x300_radio&=
#39;, &#39;slave&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;ctrlport_=
radio&#39;, &#39;slave&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;time_keep=
er&#39;, &#39;broadcaster&#39;),)<br>
[INF]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((&#39;_device_&#39;, &#39;x300_radi=
o&#39;, &#39;master&#39;),)<br>
Please tell me what could be the problem and how can I add the Window block=
 to my image?<br>
<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt;<br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&lt;mailto:<=
a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-u=
sers-leave@lists.ettus.com</a>&gt;<br>
<br>
<br>
Do you have your FFT configured for log output?=C2=A0 Because the logarithm=
 of zero is undefined.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt;<br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&lt;mailto:<=
a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-u=
sers-leave@lists.ettus.com</a>&gt;<br>
<br>
I noticed looking at your .yaml file that it references x300_radio blocks, =
and since this is an E310, that may not be appropriate?=C2=A0 I know that t=
here have<br>
=C2=A0 historically been considerable differences between the X300 RFNOC ra=
dio blocks and those for E310.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000005ea9a405cf475960--

--===============6942136433589072515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6942136433589072515==--
