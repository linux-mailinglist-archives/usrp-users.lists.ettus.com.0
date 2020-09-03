Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ACE25C844
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 19:56:15 +0200 (CEST)
Received: from [::1] (port=56622 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDtT2-0000Cx-Ll; Thu, 03 Sep 2020 13:56:12 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:46896)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kDtSx-00006H-MM
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 13:56:07 -0400
Received: by mail-ot1-f44.google.com with SMTP id c10so3478993otm.13
 for <usrp-users@lists.ettus.com>; Thu, 03 Sep 2020 10:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RkonZRXvGokfNMmsCo2cVYeqjl+aPrUcoBgmTO/oXho=;
 b=ekxrAbI2MKMLeslMVOb716iZImjESlgnmwl0Ci5Dkn+AHumUzQJQ6NkayRlFR+/wSr
 Lzt6AKYeKW8hWfymD4SGqvqkfA5M9dvHKGcaoA107yU6zY23sWtl0wZd0gbELmL2QnxZ
 A2m1CfPXWWxWTFYjBC75pQKjMyY3vWP5WBr053QnZyVXJVilyEBUp3uey1qm5Ay872sF
 me19FwmQIWNYzbUwcxIqKAyh+sZLVg67DHs4w2NbThvfaMneY/NZxbkv9VdMPD3wDFVW
 BTIjhzzdL17hsMz/wt+FV5EcCGH10ArMjamrY8TmkHA0ELPwOqqlExNkazmIuC+Ifgrh
 ovfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RkonZRXvGokfNMmsCo2cVYeqjl+aPrUcoBgmTO/oXho=;
 b=Wab2flR/C7e2F5jjZDSL5UxYjUImz4f1pepZ3eqHD6YLAFbkQQGrG7F2UrPkPK4fyj
 qXUDa/mwCpVr4lYuWyvjgBYnJgUUDfYS/05K4DQYPGoYtJN60IFVq+xck/3AFsmq2Hdv
 b0KM6zMNHkaV+8HuGZucZoAMxMfLxdW6uvn/Sq/bPpw9wHBrmNvPAhG+QANV423zQnKt
 E1tmUJUauY89NZnWd5k8cKJBInhlwRGJ4elFf20vUUR1G9uxw5P7ovyyhRFq01aUanuF
 WVLZ7FzoktJZZMvSBT6l2jHHp9agejaSaPbCN9JB3uC2HrWO8lnpi6ZI5Vc1o3EBdZnf
 sxNw==
X-Gm-Message-State: AOAM532mkRgCMSQFD2I/ukX3owjz5mroHaPqvYD6mQjEBe/KvuAmmuXj
 rEQacJrqDZWFpdn9SE9RYPk9QPwgjr8eKzpEyuv6Ig==
X-Google-Smtp-Source: ABdhPJyZActARkTwJioGOyOEtE//lb+Fi23NESr49nhEfaxKzimT5ToWoxhxQC+dWn1rlaQZoLnyx2RyTemt65W7NaM=
X-Received: by 2002:a9d:5a9:: with SMTP id 38mr2517998otd.58.1599155726807;
 Thu, 03 Sep 2020 10:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAL-X26Rgr9H=-bNKr2_O3OAaWc2=HZ1Ro7RQ_81UDkaFNWYodg@mail.gmail.com>
In-Reply-To: <CAL-X26Rgr9H=-bNKr2_O3OAaWc2=HZ1Ro7RQ_81UDkaFNWYodg@mail.gmail.com>
Date: Thu, 3 Sep 2020 13:55:15 -0400
Message-ID: <CAB__hTT7RN1LN9ypf+-Ozc4ub7dQcH6RRMow0rz8ywheA2QwYg@mail.gmail.com>
To: =?UTF-8?B?QsOhbGludCBIb3J2w6F0aA==?= <horvlint@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] N310 Late command/packet error
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7264370687801782508=="
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

--===============7264370687801782508==
Content-Type: multipart/alternative; boundary="00000000000009d5e005ae6c75de"

--00000000000009d5e005ae6c75de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi B=C3=A1lint,
You may want to step backwards once more and run the "benchmark_rate"
utility with 4 channels with tx & rx rates at 1MHz.  This will eliminate
the file I/O considerations (both for tx and rx).  If benchmark_rate is
successful, see how high you can increase the rate. The n4200 is not a very
powerful CPU, so you might be significantly limited.  If you are using the
1Gb interface, then the max sample rate you can achieve (assuming your CPU
is not limiting you) for 4 channels is ~6.25 MS/s because of the 1Gb limit
(4 chan x 6.25MS/s x 4 bytes/sample x 8 bits/byte =3D 800Mb/s).

Once you are satisfied with the USRP streaming rates, you can try putting
your tx and rx files in a ram drive in order to improve the file I/O so
that it does not impact overall performance appreciably. Then retry
txrx_loopback_to_file.
Rob


On Thu, Sep 3, 2020 at 3:23 AM B=C3=A1lint Horv=C3=A1th via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I have a USRP N310 and in my application I want to do a 4 channel
> loopback. Transmit sources are files and the received samples are
> processed. However, I ran into stability issues receiving a lot of Late
> packet errors (LLLLL). To trace the problem I executed the basic UHD
> example txrx_loopback_to_file on 4 channels with 1Msamp/sec sample rate.
> There every time I got ERROR_CODE_LATE_COMMAND. When I executed it for 3
> channels I got it working, though on some occasions the same error would
> occur. With netstat I see that in case I receive the L-s, the UDP packet
> error is increasing.
>
> After reading through the manual and threads I tried several things but
> could not resolve the issue.
> - I set the net.core.rmem_max and wmem_max as suggested
> - I set the MTU on both host and N310 to 8000 (also tried 1500)
> - I put the CPU to performance mode with cpupower
>
> My system config is:
> - Ubuntu 20.04, UHD version 3.15, (gnuradio installed with apt)
> - quad core intel n4200, 8GB RAM
> - N310 is loaded with default HG firmware (sfp0 is 1GBit)
>
> Do you have any tips on how to resolve this?
>
> Thanks!
>
> Balint
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000009d5e005ae6c75de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi B=C3=A1lint,<div>You may want to step =
backwards once more and run the &quot;benchmark_rate&quot; utility with 4 c=
hannels with tx &amp; rx rates at 1MHz.=C2=A0 This will eliminate the file =
I/O considerations (both for tx and rx).=C2=A0 If benchmark_rate is success=
ful, see how high you can increase the rate. The n4200 is not a very powerf=
ul CPU, so you might be significantly limited.=C2=A0 If you are using the 1=
Gb interface, then the max sample rate you can achieve (assuming your CPU i=
s not limiting you) for 4 channels is ~6.25 MS/s because of the 1Gb limit (=
4 chan x 6.25MS/s x 4 bytes/sample x 8 bits/byte =3D 800Mb/s).</div><div><b=
r></div><div>Once you are satisfied with the USRP streaming rates, you can =
try putting your tx and rx files in a ram drive in order to improve the fil=
e I/O so that it does not impact overall performance appreciably. Then retr=
y txrx_loopback_to_file.</div><div>Rob</div><div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 3, 2=
020 at 3:23 AM B=C3=A1lint Horv=C3=A1th via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have a USRP N310 and =
in my application I want to do a 4 channel loopback. Transmit sources are f=
iles and the received samples are processed. However, I ran into stability =
issues receiving a lot of Late packet errors (LLLLL). To trace the problem =
I executed the basic UHD example txrx_loopback_to_file on 4 channels with 1=
Msamp/sec sample rate. There every time I got ERROR_CODE_LATE_COMMAND. When=
 I executed it for 3 channels I got it working, though on some occasions th=
e same error would occur. With netstat I see that in case I receive the L-s=
, the UDP packet error is increasing.</div><div><br></div><div>After readin=
g through the manual and threads I tried several things but could not resol=
ve the issue.</div><div>- I set the net.core.rmem_max and wmem_max as sugge=
sted</div><div>- I set the MTU on both host and N310 to 8000 (also tried 15=
00)</div><div>- I put the CPU to performance mode with cpupower</div><div><=
br></div><div>My system config is:</div><div>- Ubuntu 20.04, UHD version 3.=
15, (gnuradio installed with apt)</div><div>- quad core intel n4200, 8GB RA=
M</div><div>- N310 is loaded with default HG firmware (sfp0 is 1GBit)</div>=
<div><br></div><div>Do you have any tips on how to resolve this?</div><div>=
<br></div><div>Thanks!</div><div><br></div><div>Balint</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000009d5e005ae6c75de--


--===============7264370687801782508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7264370687801782508==--

