Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5548E25FF61
	for <lists+usrp-users@lfdr.de>; Mon,  7 Sep 2020 18:31:18 +0200 (CEST)
Received: from [::1] (port=38760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFK30-0004YE-3a; Mon, 07 Sep 2020 12:31:14 -0400
Received: from mail-lf1-f42.google.com ([209.85.167.42]:38973)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <horvlint@gmail.com>) id 1kFK2w-0004U5-If
 for usrp-users@lists.ettus.com; Mon, 07 Sep 2020 12:31:10 -0400
Received: by mail-lf1-f42.google.com with SMTP id q8so7775299lfb.6
 for <usrp-users@lists.ettus.com>; Mon, 07 Sep 2020 09:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g2ksFpZ2EROKnnNXx6fL1TU4Dwy/v/cC3T2AmGuBGXY=;
 b=KRH0lh6zG8deaa69Hzc2hOu+lrEz+YCYYamI95jcfa+0NPTlcybSg7xFVuwHErWTdG
 /tNYVjkV1WTTs2xl0nmfr/cLqm1DEv/F66iUN+qNt4a+kuFoyfN4JdGlNPg9R6MjUX21
 i2GphKT5fM0/iO5NHH4uHxNuO/d6sn5vXGVaGBYwFa22nlG9Wu+QcbY00jHZ/3By6fTo
 E8OFIGMcFNdisv4KxR3N6quoVraOSXLXjjOna2xuD7VUqJHiCiVT3VfMS1FbGGH/oQNw
 tMgDeNW0zUiOEcq1YReuOIKzmnE+3otOtGfV/gAUtAfWmexub8HLs1Uy6FT7nYaPYlT+
 QMug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g2ksFpZ2EROKnnNXx6fL1TU4Dwy/v/cC3T2AmGuBGXY=;
 b=In82/AWPwg0yEILq3GWDQ0iGq/W8d2opjwwkyHnIwbfqAK/cW4PBZLk8TzzHm79t5z
 vKc0WeFOJzV8XWhkGQ4AWvVSEQR7QFoEQVMqUjWaAnKB7O2jWIQ+eB+aUnc5eqsVQlPx
 Zknu+emJZJFN4U2TrSs6cI3+xgEYWy6/ImQ7fjUvSKuAdkaFg+sfuY+ZNOxKosg1y1Zz
 hIsCwHglFN5XYwgpXUmGjvdjIJ9RW3pfO3j6lcTdQN2VO5zD9z2vp+t0c5zm0+m7/OVn
 BtMTgZ4PAgyFCGV+5q/GOfL/Sj+Vkacs+fkhiCy1yAFoNeKRszi4kJupQ1HR173/Aura
 H2ww==
X-Gm-Message-State: AOAM532f7ZaPq5J1yonM6lOo8Gr538CI+BPLsxoPIUxpGY+ra5Aj+qGl
 uaaZ9QyKPwBRXrvqgYGUvLhpJdlwAYSUC9UPvcU=
X-Google-Smtp-Source: ABdhPJzbi2tlTM7eDjPV0YU4VC0LCEy8P8ALqzy7wOs3Ptk57exOUz/VNK8RsTaZ/4jlF9icUld/md9KpZqgzu8XDUc=
X-Received: by 2002:a19:ac4:: with SMTP id 187mr10449486lfk.102.1599496229244; 
 Mon, 07 Sep 2020 09:30:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAL-X26Rgr9H=-bNKr2_O3OAaWc2=HZ1Ro7RQ_81UDkaFNWYodg@mail.gmail.com>
 <CAB__hTT7RN1LN9ypf+-Ozc4ub7dQcH6RRMow0rz8ywheA2QwYg@mail.gmail.com>
In-Reply-To: <CAB__hTT7RN1LN9ypf+-Ozc4ub7dQcH6RRMow0rz8ywheA2QwYg@mail.gmail.com>
Date: Mon, 7 Sep 2020 18:30:18 +0200
Message-ID: <CAL-X26SBhMr-FGWP6_-B9r20Xo3_XOwEAemEpfV0CYyGOaiHDg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: =?utf-8?q?B=C3=A1lint_Horv=C3=A1th_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?QsOhbGludCBIb3J2w6F0aA==?= <horvlint@gmail.com>
Content-Type: multipart/mixed; boundary="===============4433938734844483553=="
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

--===============4433938734844483553==
Content-Type: multipart/alternative; boundary="0000000000009053cf05aebbbcdf"

--0000000000009053cf05aebbbcdf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Rob,

Thank you very much for your advice. The benchmark test is working on all 4
channels for 1 MSamp/sec, which is sufficient for the current application
(though sometimes there are some S and U at startup). The ram drive did not
solve the problem, however if I set a settling time for 1 (sec) for the
txrx_loopback it started working for the 4 channels. In this case the RX
starts only 1 sec after the TX. So it kind of seems like there is a problem
at startup and after that everything is fine. I don't know if that makes
sense though.

I tried to make the settling time thing happen in gnuradio with
issue_stream_cmd after init/start with a python snippet, but oddly there is
a very short time at startup when both TX and RX are active, and the
command seems to take effect only after that. Maybe I'm missing something
here.

So now I'm trying to merge and customize the txrx_loopback with the
tx_samples from file examples hoping that it will work.

Also I checked the CPU load with htop and it is only 15% on all 4 cores
during the loopback.

Any further advice is still welcome!

Balint

Rob Kossler <rkossler@nd.edu> ezt =C3=ADrta (id=C5=91pont: 2020. szept. 3.,=
 Cs,
19:55):

> Hi B=C3=A1lint,
> You may want to step backwards once more and run the "benchmark_rate"
> utility with 4 channels with tx & rx rates at 1MHz.  This will eliminate
> the file I/O considerations (both for tx and rx).  If benchmark_rate is
> successful, see how high you can increase the rate. The n4200 is not a ve=
ry
> powerful CPU, so you might be significantly limited.  If you are using th=
e
> 1Gb interface, then the max sample rate you can achieve (assuming your CP=
U
> is not limiting you) for 4 channels is ~6.25 MS/s because of the 1Gb limi=
t
> (4 chan x 6.25MS/s x 4 bytes/sample x 8 bits/byte =3D 800Mb/s).
>
> Once you are satisfied with the USRP streaming rates, you can try putting
> your tx and rx files in a ram drive in order to improve the file I/O so
> that it does not impact overall performance appreciably. Then retry
> txrx_loopback_to_file.
> Rob
>
>
> On Thu, Sep 3, 2020 at 3:23 AM B=C3=A1lint Horv=C3=A1th via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I have a USRP N310 and in my application I want to do a 4 channel
>> loopback. Transmit sources are files and the received samples are
>> processed. However, I ran into stability issues receiving a lot of Late
>> packet errors (LLLLL). To trace the problem I executed the basic UHD
>> example txrx_loopback_to_file on 4 channels with 1Msamp/sec sample rate.
>> There every time I got ERROR_CODE_LATE_COMMAND. When I executed it for 3
>> channels I got it working, though on some occasions the same error would
>> occur. With netstat I see that in case I receive the L-s, the UDP packet
>> error is increasing.
>>
>> After reading through the manual and threads I tried several things but
>> could not resolve the issue.
>> - I set the net.core.rmem_max and wmem_max as suggested
>> - I set the MTU on both host and N310 to 8000 (also tried 1500)
>> - I put the CPU to performance mode with cpupower
>>
>> My system config is:
>> - Ubuntu 20.04, UHD version 3.15, (gnuradio installed with apt)
>> - quad core intel n4200, 8GB RAM
>> - N310 is loaded with default HG firmware (sfp0 is 1GBit)
>>
>> Do you have any tips on how to resolve this?
>>
>> Thanks!
>>
>> Balint
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000009053cf05aebbbcdf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Rob,<div><br></div><div>Thank you very much for your=
 advice. The benchmark test is working on all 4 channels for 1 MSamp/sec, w=
hich is sufficient for the current application (though sometimes there are =
some S and U at startup). The ram drive did not solve the problem, however =
if I set a settling time for 1 (sec) for the txrx_loopback it started worki=
ng for the 4 channels. In this case the RX starts only 1 sec after the TX. =
So it kind of seems like there is a problem at startup and after that every=
thing is fine. I don&#39;t know if that makes sense though.=C2=A0</div><div=
><br></div><div>I tried to make the settling time thing happen in gnuradio =
with issue_stream_cmd after init/start with a python snippet, but oddly the=
re is a very short time at startup when both TX and RX are active, and the =
command seems to take effect only after that. Maybe I&#39;m missing somethi=
ng here.</div><div><br></div><div>So now I&#39;m trying to merge and custom=
ize the txrx_loopback with the tx_samples from file examples hoping that it=
 will work.</div><div><br></div><div>Also I checked the CPU load with htop =
and it is only 15% on all 4 cores during the loopback.=C2=A0</div><div><br>=
</div><div>Any further advice is still welcome!</div><div><br></div><div>Ba=
lint</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.ed=
u</a>&gt; ezt =C3=ADrta (id=C5=91pont: 2020. szept. 3., Cs, 19:55):<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi B=C3=A1lint,<div>Yo=
u may want to step backwards once more and run the &quot;benchmark_rate&quo=
t; utility with 4 channels with tx &amp; rx rates at 1MHz.=C2=A0 This will =
eliminate the file I/O considerations (both for tx and rx).=C2=A0 If benchm=
ark_rate is successful, see how high you can increase the rate. The n4200 i=
s not a very powerful CPU, so you might be significantly limited.=C2=A0 If =
you are using the 1Gb interface, then the max sample rate you can achieve (=
assuming your CPU is not limiting you) for 4 channels is ~6.25 MS/s because=
 of the 1Gb limit (4 chan x 6.25MS/s x 4 bytes/sample x 8 bits/byte =3D 800=
Mb/s).</div><div><br></div><div>Once you are satisfied with the USRP stream=
ing rates, you can try putting your tx and rx files in a ram drive in order=
 to improve the file I/O so that it does not impact overall performance app=
reciably. Then retry txrx_loopback_to_file.</div><div>Rob</div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Sep 3, 2020 at 3:23 AM B=C3=A1lint Horv=C3=A1th via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style=
:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have a USRP N310 =
and in my application I want to do a 4 channel loopback. Transmit sources a=
re files and the received samples are processed. However, I ran into stabil=
ity issues receiving a lot of Late packet errors (LLLLL). To trace the prob=
lem I executed the basic UHD example txrx_loopback_to_file on 4 channels wi=
th 1Msamp/sec sample rate. There every time I got ERROR_CODE_LATE_COMMAND. =
When I executed it for 3 channels I got it working, though on some occasion=
s the same error would occur. With netstat I see that in case I receive the=
 L-s, the UDP packet error is increasing.</div><div><br></div><div>After re=
ading through the manual and threads I tried several things but could not r=
esolve the issue.</div><div>- I set the net.core.rmem_max and wmem_max as s=
uggested</div><div>- I set the MTU on both host and N310 to 8000 (also trie=
d 1500)</div><div>- I put the CPU to performance mode with cpupower</div><d=
iv><br></div><div>My system config is:</div><div>- Ubuntu 20.04, UHD versio=
n 3.15, (gnuradio installed with apt)</div><div>- quad core intel n4200, 8G=
B RAM</div><div>- N310 is loaded with default HG firmware (sfp0 is 1GBit)</=
div><div><br></div><div>Do you have any tips on how to resolve this?</div><=
div><br></div><div>Thanks!</div><div><br></div><div>Balint</div></div></div=
>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--0000000000009053cf05aebbbcdf--


--===============4433938734844483553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4433938734844483553==--

