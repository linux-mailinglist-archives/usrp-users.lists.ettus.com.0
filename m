Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 981FB262083
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 22:13:00 +0200 (CEST)
Received: from [::1] (port=53124 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFjz6-0008SW-As; Tue, 08 Sep 2020 16:12:56 -0400
Received: from mail-lf1-f41.google.com ([209.85.167.41]:38393)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <horvlint@gmail.com>) id 1kFjz2-0008Nq-4j
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 16:12:52 -0400
Received: by mail-lf1-f41.google.com with SMTP id y11so354193lfl.5
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 13:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=7zZYDUrtEvTThEwp54hDSphqQh8gd1+TJWaqQaPVg70=;
 b=MuG+COyZSL8k2oiuf21+590WhDe6xcSnts01Ub+Jy32uIuwsiXlSSE8HecI0yyI8M+
 nOorMfbLZ4Fr2ev1RJPlN195P0GcLqc/CoKarvmsYwUrvqyjcyoKVuc3q60u1QytCFF/
 ZlSGWYdIpSg2OMJ1hR42WnDN3u77DacazEetAdVjG4kIpRvwMsJRFtkeS4tatRJgOTce
 DN9pYuO1nedabGtBeiyxSNaB9WpCANbMcMAYZKr80hbgkhlcrgN7TiZgDVTVO7unxppY
 iYygImgUYEdMhhaaBYA0KsXkVlKoBQfFmiTfeH0CYlFptPRP4PEstwsOoyXH46tadd9G
 h6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=7zZYDUrtEvTThEwp54hDSphqQh8gd1+TJWaqQaPVg70=;
 b=uFf6WYEde6eo1WDFPUw9GSg6iD9yL/n4Jtp/huzoeUogYPuURai1Fs3QQgfZd38t/E
 dtKxyB+VG/jMMmncWZ2d6TNcRImIEiuNrn6GS+fJR1lOqi8YivT5OzfEdONwaWXunA8P
 VIJF6hr9ytf8AZbXr2p4pDhitRQunO0SW6d95CfX7soAdp03yO0GEnpm1FsSNwjOAs0p
 3vnMLujbiQAg1Q0GkNyNfU0kWxi2/ogasHv0OwxjSxfLIzomIA8JoP2EThnxVqg9J8Th
 o5DllmyBeVFrQJzTDbHyJ3GN2mJ33+BdRDacBRTZprF+5akbt0CIBXsZ+jv7SL9s7DCi
 x4WA==
X-Gm-Message-State: AOAM531zEz61+MsOajGLiVwAlMVyVv3QuEZ7hk/j4QPIVSbkvlSr0GpI
 pKRIQd98Qj3wpKirdtFuxbwYg7y+IiXz60qkoUpdPLSFJNb9ZQ==
X-Google-Smtp-Source: ABdhPJzbXbFYBHuRxRJSADMOrHKLpVnPEHleCLrxbbgvyRoleDSex0g8uPrUmXP4SGd+nPFZX5PsFFGd+zLUDhdB2IM=
X-Received: by 2002:a19:ac4:: with SMTP id 187mr326244lfk.102.1599595930367;
 Tue, 08 Sep 2020 13:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAL-X26Rgr9H=-bNKr2_O3OAaWc2=HZ1Ro7RQ_81UDkaFNWYodg@mail.gmail.com>
 <CAB__hTT7RN1LN9ypf+-Ozc4ub7dQcH6RRMow0rz8ywheA2QwYg@mail.gmail.com>
 <CAL-X26SBhMr-FGWP6_-B9r20Xo3_XOwEAemEpfV0CYyGOaiHDg@mail.gmail.com>
In-Reply-To: <CAL-X26SBhMr-FGWP6_-B9r20Xo3_XOwEAemEpfV0CYyGOaiHDg@mail.gmail.com>
Date: Tue, 8 Sep 2020 22:11:59 +0200
Message-ID: <CAL-X26QeQDiLut47jgPvQMcdvVVo_FRUzmtM4xpdZJqRWcUZJw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============2137814089539719870=="
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

--===============2137814089539719870==
Content-Type: multipart/alternative; boundary="00000000000036bac805aed2f373"

--00000000000036bac805aed2f373
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

In case anyone else has a similar problem: I could finally solve the issue
in gnuradio including a python snippet before init using the
set_start_time() command for both source and sink blocks. Now all 4 TX and
RX channels are running without any problem.

Balint

B=C3=A1lint Horv=C3=A1th <horvlint@gmail.com> ezt =C3=ADrta (id=C5=91pont: =
2020. szept. 7., H,
18:30):

> Hello Rob,
>
> Thank you very much for your advice. The benchmark test is working on all
> 4 channels for 1 MSamp/sec, which is sufficient for the current applicati=
on
> (though sometimes there are some S and U at startup). The ram drive did n=
ot
> solve the problem, however if I set a settling time for 1 (sec) for the
> txrx_loopback it started working for the 4 channels. In this case the RX
> starts only 1 sec after the TX. So it kind of seems like there is a probl=
em
> at startup and after that everything is fine. I don't know if that makes
> sense though.
>
> I tried to make the settling time thing happen in gnuradio with
> issue_stream_cmd after init/start with a python snippet, but oddly there =
is
> a very short time at startup when both TX and RX are active, and the
> command seems to take effect only after that. Maybe I'm missing something
> here.
>
> So now I'm trying to merge and customize the txrx_loopback with the
> tx_samples from file examples hoping that it will work.
>
> Also I checked the CPU load with htop and it is only 15% on all 4 cores
> during the loopback.
>
> Any further advice is still welcome!
>
> Balint
>
> Rob Kossler <rkossler@nd.edu> ezt =C3=ADrta (id=C5=91pont: 2020. szept. 3=
., Cs,
> 19:55):
>
>> Hi B=C3=A1lint,
>> You may want to step backwards once more and run the "benchmark_rate"
>> utility with 4 channels with tx & rx rates at 1MHz.  This will eliminate
>> the file I/O considerations (both for tx and rx).  If benchmark_rate is
>> successful, see how high you can increase the rate. The n4200 is not a v=
ery
>> powerful CPU, so you might be significantly limited.  If you are using t=
he
>> 1Gb interface, then the max sample rate you can achieve (assuming your C=
PU
>> is not limiting you) for 4 channels is ~6.25 MS/s because of the 1Gb lim=
it
>> (4 chan x 6.25MS/s x 4 bytes/sample x 8 bits/byte =3D 800Mb/s).
>>
>> Once you are satisfied with the USRP streaming rates, you can try puttin=
g
>> your tx and rx files in a ram drive in order to improve the file I/O so
>> that it does not impact overall performance appreciably. Then retry
>> txrx_loopback_to_file.
>> Rob
>>
>>
>> On Thu, Sep 3, 2020 at 3:23 AM B=C3=A1lint Horv=C3=A1th via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>>
>>> I have a USRP N310 and in my application I want to do a 4 channel
>>> loopback. Transmit sources are files and the received samples are
>>> processed. However, I ran into stability issues receiving a lot of Late
>>> packet errors (LLLLL). To trace the problem I executed the basic UHD
>>> example txrx_loopback_to_file on 4 channels with 1Msamp/sec sample rate=
.
>>> There every time I got ERROR_CODE_LATE_COMMAND. When I executed it for =
3
>>> channels I got it working, though on some occasions the same error woul=
d
>>> occur. With netstat I see that in case I receive the L-s, the UDP packe=
t
>>> error is increasing.
>>>
>>> After reading through the manual and threads I tried several things but
>>> could not resolve the issue.
>>> - I set the net.core.rmem_max and wmem_max as suggested
>>> - I set the MTU on both host and N310 to 8000 (also tried 1500)
>>> - I put the CPU to performance mode with cpupower
>>>
>>> My system config is:
>>> - Ubuntu 20.04, UHD version 3.15, (gnuradio installed with apt)
>>> - quad core intel n4200, 8GB RAM
>>> - N310 is loaded with default HG firmware (sfp0 is 1GBit)
>>>
>>> Do you have any tips on how to resolve this?
>>>
>>> Thanks!
>>>
>>> Balint
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000036bac805aed2f373
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></div><div>In case anyone =
else has a similar problem: I could finally solve the issue in gnuradio inc=
luding a python snippet before init using the set_start_time() command for =
both source and sink blocks. Now all 4 TX and RX channels are running witho=
ut any problem.</div><div><br></div><div>Balint</div></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">B=C3=A1lint Horv=
=C3=A1th &lt;<a href=3D"mailto:horvlint@gmail.com">horvlint@gmail.com</a>&g=
t; ezt =C3=ADrta (id=C5=91pont: 2020. szept. 7., H, 18:30):<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hello Rob,<div><br></div><div>Thank you very mu=
ch for your advice. The benchmark test is working on all 4 channels for 1 M=
Samp/sec, which is sufficient for the current application (though sometimes=
 there are some S and U at startup). The ram drive did not solve the proble=
m, however if I set a settling time for 1 (sec) for the txrx_loopback it st=
arted working for the 4 channels. In this case the RX starts only 1 sec aft=
er the TX. So it kind of seems like there is a problem at startup and after=
 that everything is fine. I don&#39;t know if that makes sense though.=C2=
=A0</div><div><br></div><div>I tried to make the settling time thing happen=
 in gnuradio with issue_stream_cmd after init/start with a python snippet, =
but oddly there is a very short time at startup when both TX and RX are act=
ive, and the command seems to take effect only after that. Maybe I&#39;m mi=
ssing something here.</div><div><br></div><div>So now I&#39;m trying to mer=
ge and customize the txrx_loopback with the tx_samples from file examples h=
oping that it will work.</div><div><br></div><div>Also I checked the CPU lo=
ad with htop and it is only 15% on all 4 cores during the loopback.=C2=A0</=
div><div><br></div><div>Any further advice is still welcome!</div><div><br>=
</div><div>Balint</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" t=
arget=3D"_blank">rkossler@nd.edu</a>&gt; ezt =C3=ADrta (id=C5=91pont: 2020.=
 szept. 3., Cs, 19:55):<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;bor=
der-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Hi B=C3=A1lint,<div>You may want to step backwards once more and r=
un the &quot;benchmark_rate&quot; utility with 4 channels with tx &amp; rx =
rates at 1MHz.=C2=A0 This will eliminate the file I/O considerations (both =
for tx and rx).=C2=A0 If benchmark_rate is successful, see how high you can=
 increase the rate. The n4200 is not a very powerful CPU, so you might be s=
ignificantly limited.=C2=A0 If you are using the 1Gb interface, then the ma=
x sample rate you can achieve (assuming your CPU is not limiting you) for 4=
 channels is ~6.25 MS/s because of the 1Gb limit (4 chan x 6.25MS/s x 4 byt=
es/sample x 8 bits/byte =3D 800Mb/s).</div><div><br></div><div>Once you are=
 satisfied with the USRP streaming rates, you can try putting your tx and r=
x files in a ram drive in order to improve the file I/O so that it does not=
 impact overall performance appreciably. Then retry txrx_loopback_to_file.<=
/div><div>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 3, 2020 at 3:23 AM B=C3=A1lin=
t Horv=C3=A1th via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br=
></div><div>I have a USRP N310 and in my application I want to do a 4 chann=
el loopback. Transmit sources are files and the received samples are proces=
sed. However, I ran into stability issues receiving a lot of Late packet er=
rors (LLLLL). To trace the problem I executed the basic UHD example txrx_lo=
opback_to_file on 4 channels with 1Msamp/sec sample rate. There every time =
I got ERROR_CODE_LATE_COMMAND. When I executed it for 3 channels I got it w=
orking, though on some occasions the same error would occur. With netstat I=
 see that in case I receive the L-s, the UDP packet error is increasing.</d=
iv><div><br></div><div>After reading through the manual and threads I tried=
 several things but could not resolve the issue.</div><div>- I set the net.=
core.rmem_max and wmem_max as suggested</div><div>- I set the MTU on both h=
ost and N310 to 8000 (also tried 1500)</div><div>- I put the CPU to perform=
ance mode with cpupower</div><div><br></div><div>My system config is:</div>=
<div>- Ubuntu 20.04, UHD version 3.15, (gnuradio installed with apt)</div><=
div>- quad core intel n4200, 8GB RAM</div><div>- N310 is loaded with defaul=
t HG firmware (sfp0 is 1GBit)</div><div><br></div><div>Do you have any tips=
 on how to resolve this?</div><div><br></div><div>Thanks!</div><div><br></d=
iv><div>Balint</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--00000000000036bac805aed2f373--


--===============2137814089539719870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2137814089539719870==--

