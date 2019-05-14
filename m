Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B2A1CBDA
	for <lists+usrp-users@lfdr.de>; Tue, 14 May 2019 17:27:35 +0200 (CEST)
Received: from [::1] (port=59596 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQZKw-0005UC-Lv; Tue, 14 May 2019 11:27:26 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:46653)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <dwwkelly@gmail.com>) id 1hQZKP-0005Mr-0E
 for usrp-users@lists.ettus.com; Tue, 14 May 2019 11:27:23 -0400
Received: by mail-oi1-f171.google.com with SMTP id 203so12390468oid.13
 for <usrp-users@lists.ettus.com>; Tue, 14 May 2019 08:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=EgNe2EHrlfMkEHV+Lhx+Gp7oEhO4WBo8LTeQUcPcenM=;
 b=P0Ogd37WP8xod1qhzB78vzdMhnRtEI5/KkncxJdL/JUcl8qyYOI+dta2COiXfYB7LI
 ECOYWHVrjNOBxkiyh9KyaNeNQd/3dojhxFRiF7hQG/IxFjgJFBevYFTo+t8QC97+B+Jy
 k9VehVEPLl0NeX36A9DZru6dDEd2qnO7uRxuSrsE+M9HYvDgjeowln6U89g73S4cf4vh
 Klz1TZiTOe9JVTT7fXhUt/mYsVQPJ0PsXT/pr1spSqoiNjjPMx/bgvE+ZJuxQdnTj6Yo
 4mmazuKo/kz68QgxKdRrY6NInKV8agqoeH1yYDFr27RCuqdlUwrXhjKpjd2A8yiZ7gWu
 Drgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=EgNe2EHrlfMkEHV+Lhx+Gp7oEhO4WBo8LTeQUcPcenM=;
 b=TttQCBOixejdnRJ2uIXuIGWXmE/2Q5dAnKjzkzST7+WCFCaRIRFLZqtd3i+AXk+SBt
 mLZV5GoVDjTP3n9Qliurl8x86Xdn/qMVM/qyFcaDGEE4w16xCYWaH3DNqjEE0wMmTm3X
 n5OBf6KzGFhXnX9d3w0/mdhkfynotr/UVAVxMMp6LBhu6r8q4TyuNGuhSN9W34Wb0bDe
 MR+PesGg/colHrxriawQ1WYIlVZ6jchSZ7/I6Q2etOOKTOAdR+kKLDoOouB6yUmx0Rfl
 rb1BDPiAn1yJ/15wMWQyO0oO/mHeIB1dhrcaJ9SsRE47yC0oEOeTLG1/hWNTeDzsKFmY
 bklQ==
X-Gm-Message-State: APjAAAW6Y0B7LPQ2+ZmRjuKYhau/Hc0eISWkRBnieYRoDI3BHyUvjsRU
 i7MJzNhWSVNrIcYGn9EHExiznUlNtRltxYNXHbZ08Q==
X-Google-Smtp-Source: APXvYqwc/d4Dl220VeDZAVDAx09BgfUsh9Znfrm0CvzUNipj0g0HTN0kBGxjkZdi40XuWVQlh0Kgqfr8b8BCpZDCjUQ=
X-Received: by 2002:aca:c5d7:: with SMTP id v206mr3364013oif.20.1557847571859; 
 Tue, 14 May 2019 08:26:11 -0700 (PDT)
MIME-Version: 1.0
References: <5C962B24-32A4-4F26-BE53-67D6DD7F66E7@lmco.com>
 <CAANLyubLL9ZxzhRd72jzi3knoL_TwV91BUKoTH0+0Bm81s=DhA@mail.gmail.com>
In-Reply-To: <CAANLyubLL9ZxzhRd72jzi3knoL_TwV91BUKoTH0+0Bm81s=DhA@mail.gmail.com>
Date: Tue, 14 May 2019 11:26:00 -0400
Message-ID: <CAANLyuYD_Rg+3kgM17kzvXA_1icZq2HKNNBXEkeTmsp2qS4_AA@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] X310 witn TwinRX: master_clock_rate issue
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
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============7597830219344636876=="
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

--===============7597830219344636876==
Content-Type: multipart/alternative; boundary="000000000000228e050588daa7b7"

--000000000000228e050588daa7b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does anyone have any ideas on this?  Is uhd_rx_cfile not the right tool to
be using?

Devin

On Thu, May 9, 2019 at 10:39 AM Devin Kelly <dwwkelly@gmail.com> wrote:

>
> Sorry to revive an old post but I'm having the same problem with UHD
> 3.12.0.0.  Am I doing something wrong with uhd_rx_cfile or should I just
> upgrade to a newer UHD?
>
> $ uhd_rx_cfile -r 10e6 -f 850e6 -a
> 'args=3D192.168.40.2,master_clock_rate=3D200e6' tmp.dat
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
> Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
> allow changing the clock rate during runtime.
> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
> MHz. Actual rate is: 100 MHz.
> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
> MHz. Actual rate is: 100 MHz.
> [UHD_RX] Defaulting to mid-point gains:
> [UHD_RX] Channel 0 gain: 49.5 dB
> ^C
>
> Thanks,
> Devin
>
> On Thu, Jan 17, 2019 at 12:48 PM Rigney, Kevin E via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I=E2=80=99m working with the TwinRX and am having the same results as Em=
anuel. I
>> was ignoring the warning about the sample rate but you said that it must
>> run at 200MHz. Can you explain why UHD sets the sample rate to 100MHz if
>> 200 is required?
>>
>> Thanks,
>>
>> -Kevin
>>
>> On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users <
>> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>>
>> Dear Martin,
>>
>> thank you for clarification. Yes, please add this to the manual. We
>> bought those TwinRX for some phase-coherent LTE signal reception, and no=
w
>> they seem to be not useful at all (without effort spent in sample rate
>> conversion in post-processing etc.)
>>
>> I'm still wondering about the master clock rate though: I tried the
>> benchmark with the following settings: ./benchmark_rate --args
>> "master_clock_rate=3D200e6" --rx_subdev A:0 --rx_rate 10e6
>> The TwinRX is mounted on slot A and a CBX-120 is mounted on slot B. I
>> simply wanted a streaming test on the first TwinRX channel.
>> During device initialization I get the following warnings, see below. Ca=
n
>> you please comment on them?
>>
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
>> allow changing the clock rate during runtime.
>> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
>> MHz. Actual rate is: 100 MHz.
>> Using Device: Single USRP:
>>   Device: X-Series Device
>>   Mboard 0: X310
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: TwinRX RX0
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: Unknown (0x0094) - 0
>>   TX Channel: 1
>>     TX DSP: 0
>>     TX Dboard: B
>>     TX Subdev: CBX-120 TX
>>
>> [00:00:05.874991] Setting device timestamp to 0...
>> .....
>>
>> Cheers,
>> Emanuel
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000228e050588daa7b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Does anyone have any ideas on this?=C2=A0 Is uhd_rx_c=
file not the right tool to be using?</div><div><br></div><div>Devin<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, May 9, 2019 at 10:39 AM Devin Kelly &lt;<a href=3D"mailto:dwwkell=
y@gmail.com">dwwkelly@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div><br></div><div>Sorry to revive an old post but I&#39;m having=
 the same problem with UHD 3.12.0.0.=C2=A0 Am I doing something wrong with =
uhd_rx_cfile or should I just upgrade to a newer UHD?<br></div><div><br></d=
iv><div style=3D"margin-left:40px">$ uhd_rx_cfile -r 10e6 -f 850e6 -a &#39;=
args=3D192.168.40.2,master_clock_rate=3D200e6&#39; tmp.dat<br>[INFO] [UHD] =
linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); Boost_105300; UHD=
_3.12.0.heads-v3.12.0.0-0-gec786351<br>[WARNING] [X300] Cannot update maste=
r clock rate! X300 Series does not allow changing the clock rate during run=
time.<br>[WARNING] [X300 RADIO] Requesting invalid sampling rate from devic=
e: 200 MHz. Actual rate is: 100 MHz.<br>[WARNING] [X300 RADIO] Requesting i=
nvalid sampling rate from device: 200 MHz. Actual rate is: 100 MHz.<br>[UHD=
_RX] Defaulting to mid-point gains:<br>[UHD_RX] Channel 0 gain: 49.5 dB<br>=
^C<br></div></div></div><div><br></div><div>Thanks,</div><div>Devin<br></di=
v><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jan 17, 2019 at 12:48 PM Rigney, Kevin E via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">I=E2=80=99m working with the TwinRX and am having the same r=
esults as Emanuel. I was ignoring the warning about the sample rate but you=
 said that it must run at 200MHz. Can you explain why UHD sets the sample r=
ate to 100MHz if 200 is required?<br>
<br>
Thanks,<br>
<br>
-Kevin<br>
<br>
On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt;&gt; wrote:<br>
<br>
Dear Martin,<br>
<br>
thank you for clarification. Yes, please add this to the manual. We bought =
those TwinRX for some phase-coherent LTE signal reception, and now they see=
m to be not useful at all (without effort spent in sample rate conversion i=
n post-processing etc.)<br>
<br>
I&#39;m still wondering about the master clock rate though: I tried the ben=
chmark with the following settings: ./benchmark_rate --args &quot;master_cl=
ock_rate=3D200e6&quot; --rx_subdev A:0 --rx_rate 10e6<br>
The TwinRX is mounted on slot A and a CBX-120 is mounted on slot B. I simpl=
y wanted a streaming test on the first TwinRX channel.<br>
During device initialization I get the following warnings, see below. Can y=
ou please comment on them?<br>
<br>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[WARNING] [X300] Cannot update master clock rate! X300 Series does not allo=
w changing the clock rate during runtime.<br>
[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200 MH=
z. Actual rate is: 100 MHz.<br>
Using Device: Single USRP:<br>
=C2=A0 Device: X-Series Device<br>
=C2=A0 Mboard 0: X310<br>
=C2=A0 RX Channel: 0<br>
=C2=A0 =C2=A0 RX DSP: 0<br>
=C2=A0 =C2=A0 RX Dboard: A<br>
=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>
=C2=A0 TX Channel: 0<br>
=C2=A0 =C2=A0 TX DSP: 0<br>
=C2=A0 =C2=A0 TX Dboard: A<br>
=C2=A0 =C2=A0 TX Subdev: Unknown (0x0094) - 0<br>
=C2=A0 TX Channel: 1<br>
=C2=A0 =C2=A0 TX DSP: 0<br>
=C2=A0 =C2=A0 TX Dboard: B<br>
=C2=A0 =C2=A0 TX Subdev: CBX-120 TX<br>
<br>
[00:00:05.874991] Setting device timestamp to 0...<br>
.....<br>
<br>
Cheers,<br>
Emanuel<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000228e050588daa7b7--


--===============7597830219344636876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7597830219344636876==--

