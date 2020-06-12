Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2B51F7F71
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 01:08:31 +0200 (CEST)
Received: from [::1] (port=38066 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjsmi-0000E9-7E; Fri, 12 Jun 2020 19:08:28 -0400
Received: from mail-ej1-f46.google.com ([209.85.218.46]:37589)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jjsmd-000092-OP
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 19:08:23 -0400
Received: by mail-ej1-f46.google.com with SMTP id mb16so11668011ejb.4
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 16:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n3Keze3OADkVrnwZA5GQSGJg2MSIyC37ZhrebJx7Bco=;
 b=LnvZtrHLsp/zUWfKR5r4fzaleWJecbEF1xprFsfxRfOYpsaqK8nlkksarmIj5fLtoE
 szwiw5KKZRJwCXOB5xmd64lLmnZP7QEdBx10cLlc5DHPWTN6VDgrxnbLI9X5U0tWpmXO
 wZPqhfZIBeTgAp/XB3rGRANOV0OFw4m/IJTa2+ZHFfZrjZQPheFtXMfWrV2PhQF9DiRB
 MeYiUfNa0CQf0Q2MVHz3UrKJT2Adaw1kZfn9+j46imn25n1syd1768MSims6ngl8m2l8
 8I1jXDM4fdaz1sODtoRdVkwbHnAXzHxt2LpfsH876isO8Vv2ncsry+O/kKsN2ygmAmZH
 8H0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n3Keze3OADkVrnwZA5GQSGJg2MSIyC37ZhrebJx7Bco=;
 b=ZBXxIpFDlScmHPYuL78bBvdpeR2bF42Iwbxb7YPvycNbCwxFNFbkzXYkTi17bt9Vv9
 thdvkI0sZ9M8/6jLrkyWIbfKUqO5szHqWYjoflKQQKUZyiDAFmKBxhL0/63b57P4eyv4
 1Yh6gftTiqLrohkvNyXkFV/UAEiBbUI+9OVGNd5ISLIcTZYX8BtWvUDCNcK/N+BzoEUH
 KQR/FwHNRMm44CR3alKEjy7g4obxHhp4fXmePnMcuNruCXtXkiSQyiYGN6xlX6iq0nTC
 Yg8cv3YxTa2CV1aHaViB5GFML9+xeZ00pyrkA4YBdOluBU4zHqt6uzBISmzW2JnflQBq
 kGWQ==
X-Gm-Message-State: AOAM5324K0H/TEpp+kYy2A50pFk6vUZT5wYyecNDPwrsNkiU2GB9t0ah
 G6/qJSmdnLE0bIVhkdJp0UcAD7P8j8EnmzS9zvY=
X-Google-Smtp-Source: ABdhPJwHBbFPfn0ctn/Nj2Zdy2LJulK99GPi6ONQhNYzCdFO7qmw2IkAaV1OopRHEpAYNeC7+JYmn04aRQW9qH7XO/s=
X-Received: by 2002:a17:906:528b:: with SMTP id
 c11mr14980393ejm.407.1592003262742; 
 Fri, 12 Jun 2020 16:07:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh71qD9o27hGbe3DEtZkgXyWsfcScNX-RB6NbuOCq5DVUGg@mail.gmail.com>
 <CA+JMMq9n4LDNc_8ZjDm=Wpu04V1jALL4Z-CfkvTJ0__aH1Yzjg@mail.gmail.com>
In-Reply-To: <CA+JMMq9n4LDNc_8ZjDm=Wpu04V1jALL4Z-CfkvTJ0__aH1Yzjg@mail.gmail.com>
Date: Fri, 12 Jun 2020 17:07:31 -0600
Message-ID: <CAH2Hh72z75OFeQvto-VcaGAsJ_WDSkq0qAn--tr8amS_4OEhiw@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============5787696021168342170=="
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

--===============5787696021168342170==
Content-Type: multipart/alternative; boundary="000000000000f5043005a7eb242b"

--000000000000f5043005a7eb242b
Content-Type: text/plain; charset="UTF-8"

All of the devices share a 10 MHz reference that is generated from the same
source as the 1 PPS.

When you say it's a phase ambiguity, are you suggesting that it's a problem
with the 10Hz reference or something inherent in the radio hardware that I
will have to deal with? Or is there a software fix?

On Fri, Jun 12, 2020, 4:05 PM Nick Foster <bistromath@gmail.com> wrote:

> The change in time of arrival with B200s is due to phase ambiguity. Do you
> have a 10MHz reference shared between your devices as well?
>
> Don't know why N210 has that off-by-one timestamp. I'm guessing that
> there's an extra flop in the logic for the PPS timing chain somewhere -- as
> in, the clock starts ticking on the first tick after PPS comes in. I've
> made that error about half a million times, myself.
>
> Nick
>
> On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello all,
>>
>> I have two separate, but related, questions.
>>
>> I am trying to trigger an RF transmission every second, and I am
>> receiving the transmission with a receiver that has very precise time
>> stamps. I am driving the receiver with the same 1 PPS source as the B200
>> and N210. For my simple test, I want the time of arrival at the receiver to
>> register at 1 PPS + propagation delay of the RF coax cable + the USRP front
>> end delay. In all cases I am running UHD 3.15.LTS
>>
>> With the N210 I can achieve this. However when I call
>>
>> usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>>
>> and poll the last pps time, I see that it is consistently 20 ns before a
>> second. That is, the pps shows at:
>>
>> 999999980 ns
>> 1999999980 ns
>> 2999999980 ns
>>
>> If I call usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1
>> PPS registers on the second. It's almost like the clock is biased by 20 ns.
>> I have observed this across 3 different N210s. What could be causing this?
>>
>> With the B200, every time I destroy and recreate the
>> uhd::usrp::multi_usrp there is a random change in the time of arrival at
>> the receiver that appears to be uniformly distributed between 0 and
>> 1/master_clock_rate. Is this expected? The Ettus website says "All
>> functions that directly interact with the AD93xx (tuning, gain change, etc)
>> are subject to the scheduling of the AD93xx. The determinism of these
>> operations are not guaranteed. "
>>
>> Is this what I am experiencing?
>>
>> Thank you for the help!
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000f5043005a7eb242b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">All of the devices share a 10 MHz reference that is gener=
ated from the same source as the 1 PPS.<div dir=3D"auto"><br></div><div dir=
=3D"auto">When you say it&#39;s a phase ambiguity, are you suggesting that =
it&#39;s a problem with the 10Hz reference or something inherent in the rad=
io hardware that I will have to deal with? Or is there a software fix?</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Jun 12, 2020, 4:05 PM Nick Foster &lt;<a href=3D"mailto:bistromath=
@gmail.com" target=3D"_blank" rel=3D"noreferrer">bistromath@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>The=
 change in time of arrival with B200s is due to phase ambiguity. Do you hav=
e a 10MHz reference shared between your devices as well?</div><div><br></di=
v><div>Don&#39;t know why N210 has that off-by-one timestamp. I&#39;m guess=
ing that there&#39;s an extra flop in the logic for the PPS timing chain so=
mewhere -- as in, the clock starts ticking on the first tick after PPS come=
s in. I&#39;ve made that error about half a million times, myself.<br></div=
><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 2:23 PM Aaron Sm=
ith via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D=
"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>Hello all,</div><div><br></div><div>I have two separate, but=
 related, questions.</div><div><br></div><div>I am trying to trigger an RF =
transmission every second, and I am receiving the transmission with a recei=
ver that has very precise time stamps. I am driving the receiver with the s=
ame 1 PPS source as the B200 and N210. For my simple test, I want the time =
of arrival at the receiver to register at 1 PPS + propagation delay of the =
RF coax cable + the USRP front end delay. In all cases I am running UHD 3.1=
5.LTS<br></div><div><br></div><div>With the N210 I can achieve this. Howeve=
r when I call=20
<pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0));</pre>

</div><div>and poll the last pps time, I see that it is consistently 20 ns =
before a second. That is, the pps shows at:</div><div><br></div><div>999999=
980 ns<br></div><div>1999999980 ns<br></div><div>2999999980 ns<br></div><di=
v><br></div><div>If I call=20
usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1 PPS regis=
ters on the second. It&#39;s almost like the clock is biased by 20 ns. I ha=
ve observed this across 3 different N210s. What could be causing this?</div=
><div><br></div><div>With the B200, every time I destroy and recreate the=
=20
uhd::usrp::multi_usrp there is a random change in the time of arrival at th=
e receiver that appears to be uniformly distributed between 0 and 1/master_=
clock_rate. Is this expected? The Ettus website says
&quot;All functions that directly interact with the AD93xx (tuning, gain=20
change, etc) are subject to the scheduling of the AD93xx. The=20
determinism of these operations are not guaranteed. &quot;<br></div><div><b=
r></div><div>Is this what I am experiencing? <br></div><div><br></div><div>=
Thank you for the help!<br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000f5043005a7eb242b--


--===============5787696021168342170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5787696021168342170==--

