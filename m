Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD84EC87E
	for <lists+usrp-users@lfdr.de>; Fri,  1 Nov 2019 19:31:09 +0100 (CET)
Received: from [::1] (port=34510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQbhT-0000Tm-Oa; Fri, 01 Nov 2019 14:31:07 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:46924)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iQbhP-0000MS-MQ
 for usrp-users@lists.ettus.com; Fri, 01 Nov 2019 14:31:03 -0400
Received: by mail-lj1-f170.google.com with SMTP id w8so11119166lji.13
 for <usrp-users@lists.ettus.com>; Fri, 01 Nov 2019 11:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O/E3NoLylbcUicQaWRFuuit1J/J5JifBf5kSr0gCeTQ=;
 b=KrBtNSRXQLqBMkCRo/rw+3oKsRcH1Kbf7kendF1CopcvajgiVgGyB4+p8sloQz+5P+
 +gQ6qhFBZIjaTRIUc2Nf80ctg3iMTASipON1rj9qifdYwbr/zXTnEdEDzfgdIPFyo0Zp
 YcIi4pAqf/vJLOc8szSIquT2zMeLADR8z8SF37SUnxGIKMe1pCgbR+wuyPnzt/4WBg23
 65RF1GDzrOpN/VT21aUufj4RKvBERMH947errAvTHUCob+7066iq2BV5HWqENEqGjSLn
 zAEyGz0eVgzqPMiMtphyLrH89CZJAR8CmqJftM0jKV/m2swO7nwAVyHZ2Xr2PlTNqYa4
 8F2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O/E3NoLylbcUicQaWRFuuit1J/J5JifBf5kSr0gCeTQ=;
 b=Cx/ezAAbBzUHSaR/hQgFZiyqm0ntxGwLfvT8TSnH7RyJ03Z7YwyAZKkVhkAxfHsDfV
 61k8Opq63IGuTAdoUxsm0Bi1Fq021r8frsqx+MXMN+eAUtuvvH/KVmOsKU33AuDSfCOn
 4mwoIIdMehPOh5lAni5EdPRkzdY0cQcLjfuHtOr+AmrSA+He+RKlctBAzaJ4bRNT3mFF
 +oOxXnhRIEgqh2NDUnXIShvBJBvUsxdlos9/0HXk0VQlWCIhOQYMQSOcnnlaMPGe5rLY
 X3S8FpFtBkFmVhjisYM8bff960r571HDBoXlMaCvc3LGd6vJKc/Mlhj8xYRYWc2JKkjp
 n1qw==
X-Gm-Message-State: APjAAAVEKjGdg9ViHRE69dN/nfjCIghg2eGZvqimlhanLhpAp9h+sJO6
 bzz+Ad3qb+uk45MefT3FwxtKcvIUnr2BtggZEymCz/Nu
X-Google-Smtp-Source: APXvYqypVwBaFySWT1NXa4Cefnii7sSJb3nYPhDSRHDD9Ou7DPc+sYlP32iTTHWg0lJrPVhpgBBjOSN0S7C5NKuT0jg=
X-Received: by 2002:a2e:91c9:: with SMTP id u9mr9218539ljg.227.1572633022302; 
 Fri, 01 Nov 2019 11:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <4641024f.15948.16e1bbf492a.Coremail.ruoyilei@126.com>
In-Reply-To: <4641024f.15948.16e1bbf492a.Coremail.ruoyilei@126.com>
Date: Fri, 1 Nov 2019 13:30:10 -0500
Message-ID: <CANf970aHdsoTV5QAnECkpT3cv-2dGYJzCLr+bAYC8b0=fBAn2g@mail.gmail.com>
To: =?UTF-8?B?546L55u8?= <ruoyilei@126.com>
Subject: Re: [USRP-users] questions about uhd-dpdk with n310
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6867424865040347331=="
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

--===============6867424865040347331==
Content-Type: multipart/alternative; boundary="000000000000a81f8d05964d289b"

--000000000000a81f8d05964d289b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Panny Wang,

I notice that you're only specifying a single streaming address in your
call to benchmark rate, implying that you're only leveraging a single 10GbE
link. You can specify "addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>"=
 in
your device args.

Best,

Sam Reiter
SDR Applications Engineer
Ettus Research

On Wed, Oct 30, 2019 at 3:20 AM =E7=8E=8B=E7=9B=BC via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>  Nate.I want to use DPDK in UHD with N310 follow
> https://files.ettus.com/manual/page_dpdk.html
> <https://files.ettus.com/manual/page_dpdk.html.>,but the result is not sa=
tisfactory.I
> got you have some research about this from the user-list emails(*With an
> i7-4790k / Intel x520-DA2 and N310, to stream at full duplex, over two
> channels at 125 MS/s, the lowest I can run my CPU clock freq at without
> flow control errors is 3.8 GHz using benchmark_rate and the native
> networking stack. Using DPDK I can run 2x2 @ 125 MS/s with my CPU freq
> locked at 1.5 GHz with no flow control errors. *).
> May be you can do me a favor and have some idea about my quesion.
> (1) I use benchmark_rate to test the streaming performance, I only got
> 122.88MS/s for 1channel, or 61.44MS/s for 2x2. run with 2x2@122.88MS/s ,
> a lot of samples dropped.
> Unfortuately, my destination is 4x4@122.88MS/s. I don't know is it
> possible for my present host machine, or what configuration of host
> machine should have?
> ubuntu server 18.04    uhd:3.14.1.1  dpdk 17.11.6   dual 10GbE links (XG
> image loaded)
> host machine: 4 node, 8 cores in each node, tota 32 cores, cpu: Intel(R)
> Xeon(R) CPU E5-4650 0 @ 2.70GHz
> more informations about my host machine is in the attchachment.(hypethrea=
d
> closed, cpufrequtils GOVERNOR=3D"perfomance")
> *   --args
> "type=3Dn3xx,mgmt_addr=3D192.168.1.104,addr=3D192.168.20.2,master_clock_r=
ate=3D122.88e6,use_dpdk=3D1"
> \*
> *   --duration 60 \*
> *   --channels "0,1" \*
> *   --rx_rate 122.88e6 \*
> *   --rx_subdev "A:0 A:1" \*
> *   --tx_rate 122.88e6 \*
> *   --tx_subdev "A:0 A:1" *
> *   Benchmark rate summary:*
> *     Num received samples:     2744145668*
> *  Num dropped samples:      6030320380*
> *  Num overruns detected:    921*
> *  Num transmitted samples:  14684137560*
> *  Num sequence errors (Tx): 0*
> *  Num sequence errors (Rx): 0*
> *  Num underruns detected:   67231*
> *  Num late commands:        0*
> *  Num timeouts (Tx):        0*
> *  Num timeouts (Rx):        0*
>
> (2) In the  txrx_loopback_to_file test ,when I use the default --setting
> for 4*4channels, there is a error *UUUUError: Receiver error
> ERROR_CODE_LATE_COMMAND* .
> I change it to --setting 1 ,it works.
> I want to know the influence to my streaming or sample datas if 1 increas=
e
>  --setting?
> *(--settling arg (=3D0.20000000000000001) settling time (seconds)
> before receiving)*
>
> Much appreciated.
>
> Regards,
> Panny Wang
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a81f8d05964d289b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><span style=3D"line-height:22.4px">Panny Wang,</span></div><div=
 class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><span sty=
le=3D"line-height:22.4px"></span></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><span style=3D"line-height:22.4px"><br>=
</span></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif"><span style=3D"line-height:22.4px">I notice that you&#39;re only sp=
ecifying a single streaming address in your call=20
to benchmark rate, implying that you&#39;re only leveraging a single 10GbE=
=20
link. You can specify=20
&quot;addr0=3D&lt;xxx.xxx.xxx.xxx&gt;,addr1=3D&lt;xxx.xxx.xxx.xxx&gt;&quot;=
 in your=20
device args. <br></span></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><span style=3D"line-height:22.4px"><br></span></di=
v><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><sp=
an style=3D"line-height:22.4px">Best,<br><br>Sam Reiter<br>SDR Applications=
 Engineer<br>Ettus Research<br></span></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 30, 2019 at 3:20 AM=
 =E7=8E=8B=E7=9B=BC via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">

   =20

<div>

<div style=3D"font-family:=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,Verdana,&quo=
t;Microsoft Yahei&quot;,SimSun,sans-serif;font-size:14px;line-height:1.6">
    <div></div><div>
    <div>Hello,</div><div>=C2=A0Nate.<span style=3D"color:rgb(49,53,59);fon=
t-family:&quot;Times New Roman&quot;;font-size:16px;line-height:1.6">I want=
 to use DPDK in UHD with N310 follow=C2=A0</span><a href=3D"https://files.e=
ttus.com/manual/page_dpdk.html." style=3D"font-family:&quot;Times New Roman=
&quot;;font-size:16px;line-height:1.6" target=3D"_blank">https://files.ettu=
s.com/manual/page_dpdk.html</a>,but the result is not=C2=A0<span style=3D"f=
ont-size:16px;line-height:1.6;font-family:&quot;Times New Roman&quot;;white=
-space:nowrap;color:rgb(51,51,51);background-color:rgb(255,255,255)">satisf=
actory.I got you have some research about this from the user-list emails(</=
span><span style=3D"font-family:arial,helvetica,sans-serif;line-height:21.5=
36px;background-color:rgb(255,255,255)"><i><font style=3D"font-size:12px" s=
ize=3D"2">With an i7-4790k / Intel x520-DA2 and N310, to stream at full dup=
lex, over two channels at 125 MS/s, the lowest I can run my CPU clock freq =
at without flow control errors is 3.8 GHz using benchmark_rate and the nati=
ve networking stack. Using DPDK I can run 2x2 @ 125 MS/s with my CPU freq l=
ocked at 1.5 GHz with no flow control errors.=C2=A0</font></i></span><span =
style=3D"color:rgb(51,51,51);font-family:&quot;Times New Roman&quot;;font-s=
ize:16px;line-height:1.6;white-space:nowrap;background-color:rgb(255,255,25=
5)">).</span></div><div><span style=3D"color:rgb(51,51,51);font-family:&quo=
t;Times New Roman&quot;;font-size:16px;line-height:1.6;white-space:nowrap;b=
ackground-color:rgb(255,255,255)">May be you can do me a favor and have som=
e idea about my quesion.</span></div><div><span style=3D"color:rgb(51,51,51=
);font-family:&quot;Times New Roman&quot;;font-size:16px;line-height:1.6;wh=
ite-space:nowrap;background-color:rgb(255,255,255)">(1) I use benchmark_rat=
e to test the=C2=A0</span><span style=3D"color:rgb(49,53,59);font-family:ve=
rdana,sans-serif;line-height:22.4px">streaming performance, I only got 122.=
88MS/s for 1channel, or 61.44MS/s for 2x2. run with 2x2@122.88MS/s , a lot =
of samples dropped.=C2=A0</span></div><div><span style=3D"color:rgb(49,53,5=
9);font-family:verdana,sans-serif;line-height:22.4px">Unfortuately, my dest=
ination is 4x4@122.88MS/s. I don&#39;t know is it possible for my present=
=C2=A0</span><span style=3D"color:rgb(49,53,59);font-family:verdana,sans-se=
rif;line-height:22.4px">host machine, or what configuration of host machine=
 should have?</span></div><div><span style=3D"color:rgb(49,53,59);font-fami=
ly:verdana,sans-serif;line-height:22.4px">ubuntu server 18.04 =C2=A0 =C2=A0=
uhd:3.14.1.1 =C2=A0dpdk 17.11.6 =C2=A0</span><span style=3D"color:rgb(49,53=
,59);font-family:verdana,sans-serif;line-height:22.4px">=C2=A0dual 10GbE li=
nks (</span><span style=3D"color:rgb(49,53,59);font-family:verdana,sans-ser=
if;line-height:22.4px">XG image loaded)</span></div><div>host machine: 4 no=
de, 8 cores in each node, tota 32 cores, cpu:=C2=A0<span style=3D"line-heig=
ht:1.6">Intel(R) Xeon(R) CPU E5-4650 0 @ 2.70GHz</span></div><div>more info=
rmations about my host machine is in the attchachment.(hypethread closed, c=
pufrequtils GOVERNOR=3D&quot;perfomance&quot;)</div><div><div><i><font styl=
e=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0--args &quot;type=3Dn3xx,mgmt_=
addr=3D192.168.1.104,addr=3D192.168.20.2,master_clock_rate=3D122.88e6,use_d=
pdk=3D1&quot; \</font></i></div><div><i><font style=3D"font-size:12px" size=
=3D"2">=C2=A0 =C2=A0--duration 60 \</font></i></div><div><i><font style=3D"=
font-size:12px" size=3D"2">=C2=A0 =C2=A0--channels &quot;0,1&quot; \</font>=
</i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0--=
rx_rate 122.88e6 \</font></i></div><div><i><font style=3D"font-size:12px" s=
ize=3D"2">=C2=A0 =C2=A0--rx_subdev &quot;A:0 A:1&quot; \</font></i></div><d=
iv><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0--tx_rate 122.=
88e6 \</font></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=
=C2=A0 =C2=A0--tx_subdev &quot;A:0 A:1&quot;=C2=A0</font></i></div><div><i>=
<font style=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0Benchmark rate summa=
ry:</font></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=
=A0 =C2=A0 =C2=A0Num received samples: =C2=A0 =C2=A0 2744145668</font></i><=
/div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 Num dropped s=
amples: =C2=A0 =C2=A0 =C2=A06030320380</font></i></div><div><i><font style=
=3D"font-size:12px" size=3D"2">=C2=A0 Num overruns detected: =C2=A0 =C2=A09=
21</font></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0=
 Num transmitted samples: =C2=A014684137560</font></i></div><div><i><font s=
tyle=3D"font-size:12px" size=3D"2">=C2=A0 Num sequence errors (Tx): 0</font=
></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 Num seq=
uence errors (Rx): 0</font></i></div><div><i><font style=3D"font-size:12px"=
 size=3D"2">=C2=A0 Num underruns detected: =C2=A0 67231</font></i></div><di=
v><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 Num late commands: =
=C2=A0 =C2=A0 =C2=A0 =C2=A00</font></i></div><div><i><font style=3D"font-si=
ze:12px" size=3D"2">=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<=
/font></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 Nu=
m timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00</font></i></div></div><h1 sty=
le=3D"box-sizing:border-box;font-size:14px;font-family:AvertaStd-semibold,t=
ahoma,&quot;Microsoft YaHei&quot;,&quot;\005fae\008f6f\0096c5\009ed1&quot;,=
&quot;\005b8b\004f53&quot;,&quot;Malgun Gothic&quot;,sans-serif;color:rgb(5=
1,51,51);height:auto;line-height:14px;background-color:rgb(255,255,255)"><b=
r></h1>
    <div>
        (2) In the =C2=A0txrx_loopback_to_file test ,when I use the default=
 --setting for 4*4channels, there is a error <i>UUUUError: Receiver error E=
RROR_CODE_LATE_COMMAND</i>=C2=A0.</div><div>I change it to=C2=A0<span style=
=3D"line-height:22.4px">--setting 1 ,it works.</span></div><div><span style=
=3D"line-height:22.4px">I want to know the influence to my streaming or sam=
ple datas if 1 increase=C2=A0</span><span style=3D"line-height:22.4px">=C2=
=A0</span><span style=3D"line-height:22.4px">--setting?</span></div><div><d=
iv><i><font style=3D"font-size:12px" size=3D"2">(--settling arg (=3D0.20000=
000000000001) settling time (seconds) before=C2=A0<span style=3D"line-heigh=
t:1.6">receiving)</span></font></i></div><div style=3D"line-height:22.4px">=
<span style=3D"font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-s=
ize:13.46px;line-height:1.6;background-color:rgb(255,255,255)"><br></span><=
/div><div style=3D"line-height:22.4px"><span style=3D"font-family:Verdana,G=
eneva,Helvetica,Arial,sans-serif;font-size:13.46px;line-height:1.6;backgrou=
nd-color:rgb(255,255,255)">Much appreciated.</span></div></div><div style=
=3D"line-height:22.4px"><span style=3D"font-family:Verdana,Geneva,Helvetica=
,Arial,sans-serif;font-size:13.46px;line-height:1.6;background-color:rgb(25=
5,255,255)"><br></span></div><div><span style=3D"line-height:22.4px">Regard=
s,</span></div><div><span style=3D"line-height:22.4px">Panny Wang</span></d=
iv><div><span style=3D"line-height:22.4px">=C2=A0</span></div>
    <div id=3D"gmail-m_7026444473092057810ntes-pcmac-signature" style=3D"fo=
nt-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;">
    =20
    <div style=3D"font-size:14px;padding:0px;margin:0px;line-height:14px"><=
br></div>
 </div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a81f8d05964d289b--


--===============6867424865040347331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6867424865040347331==--

