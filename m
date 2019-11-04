Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C573EE946
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2019 21:14:32 +0100 (CET)
Received: from [::1] (port=57738 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iRikA-000280-5J; Mon, 04 Nov 2019 15:14:30 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:44947)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iRik6-0001wn-7O
 for usrp-users@lists.ettus.com; Mon, 04 Nov 2019 15:14:26 -0500
Received: by mail-lj1-f172.google.com with SMTP id g3so12981155ljl.11
 for <usrp-users@lists.ettus.com>; Mon, 04 Nov 2019 12:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UzI1OtjOH4XfHyDGzhGt/HI7BG3kgDWuNb8jk+hXGGc=;
 b=hW6c0jmpzahsE61FbydepkFbifGxMqtut8JXwUMj9pMPP6jqQQ3+p+abu9jmnvkGXn
 JwhcQZgOOp9WCASdPTqAAdBNxu1I9jJY3lHHW3KPCKrTk0UBtiEPUtu1W0Zm5Rki6iWS
 wK3U3RwhzDCsIh7LWKfjUQComPE7tfT6b/E8sWXH/EvjXSA9Dbn+u7E0bPoZA4c/uEGg
 jHFngkOg91hmJtjC75kdxwYOjN90UsVPmkFjneTe8HTJTVhhVv46nZCsySKZV6IHfuJi
 Wx344XFHrfuw2rqm1Q2dr6lP1JIR5EhpTqaAR4J6n9PAaIApr4wNgD4N5boNb1QJoY3h
 iWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UzI1OtjOH4XfHyDGzhGt/HI7BG3kgDWuNb8jk+hXGGc=;
 b=nOhvbAEmhXG01qZLI2UehPYYefTA+IKU6l2Q2AUEOplAL75fE/ns8M+KtCGDPg2y99
 gym3eVFea7JgKcN6WdZYHNazwnnVv7eU5Tdb6sl5fhA8EZ/FtEul3YmKkksY6OFAQIkk
 ONhzJNRKUaSjBFusBLgbGjTKut1qOlf81YruPISOaxqnbvwaeMVhEqfgQW7OvpJ/p8hu
 Lw0sC0kex1g51hk7yU6WGQbYdi3KwBpF3m+X40DW8Utlv+i+iYnLrzUOu9S8lr/umBGN
 PT7tUVS32KUNFq+qBNjnX2EoAboU3IzV0nwkgx9XiHFErE+JXlIhRn2FDvQLSRN2SOCu
 Y2Zw==
X-Gm-Message-State: APjAAAUkNpiDFrJWcXrIyDa8TXumex+jsba2JTYgYiicapYmJhzzwyqa
 zfHdEhUYRL2W5CXr0RPdVLK8j2uKTkFvtfKVVda8L/fi
X-Google-Smtp-Source: APXvYqxf+gbuFrayTHBIshqZyMkF1z609vSwaAO5y18zoo5Vd5Q1dM19mqIKqnCKD/MAz6KId8/Q6nIgCiaAtRgizg8=
X-Received: by 2002:a2e:6a10:: with SMTP id f16mr35479ljc.100.1572898424640;
 Mon, 04 Nov 2019 12:13:44 -0800 (PST)
MIME-Version: 1.0
References: <4641024f.15948.16e1bbf492a.Coremail.ruoyilei@126.com>
 <CANf970aHdsoTV5QAnECkpT3cv-2dGYJzCLr+bAYC8b0=fBAn2g@mail.gmail.com>
 <7524c856.d8d.16e3454fe58.Coremail.ruoyilei@126.com>
In-Reply-To: <7524c856.d8d.16e3454fe58.Coremail.ruoyilei@126.com>
Date: Mon, 4 Nov 2019 14:13:31 -0600
Message-ID: <CANf970bfwGT5=Gco_YwiVG0gyra6_TWVXU_OwcC86Ka0j_DfEA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5673415589288199919=="
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

--===============5673415589288199919==
Content-Type: multipart/alternative; boundary="000000000000de7ea105968af35b"

--000000000000de7ea105968af35b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Panny Wang,

You're correct, you should specify a second address with addr/second_addr,
rather than addr0/addr1 - my bad. [1]

Assuming you're using both 10GbE links correctly, my next step would be to
investigate the processor you're using. Something with a higher clock speed
is generally recommended for higher streaming rates.

Would you be able to send over the output of:

*cpufreq-info && ifconfig*

Best,

Sam Reiter

[1]
https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X300/X310

On Sun, Nov 3, 2019 at 8:53 PM =E7=8E=8B=E7=9B=BC <ruoyilei@126.com> wrote:

> Hello,
> Sam Reiter. When leveraging dual 10GbE links,I  specify"
> addr=3D192.168.20.2,second_addr=3D192.168.10.2",last email I didn't give =
the
> example . The result is not much diffrent with use a single 10GbE link.
> I think it is  "addr=3D<xxx.xxx.xxx.xxx>,second_addr=3D<xxx.xxx.xxx.xxx>"=
 but
> not "addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>". when use  "add=
r0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>",I
> get errors:
> *[INFO] [MPMD] Initializing 3 device(s) in parallel with args:
> mgmt_addr0=3D192.168.2.230,type0=3Dn3xx,product0=3Dn310,serial0=3D316645B=
,claimed0=3DFalse,mgmt_addr1=3D192.168.2.230,type1=3Dn3xx,product1=3Dn310,s=
erial1=3D316645B,claimed1=3DFalse,mgmt_addr2=3D192.168.2.230,type2=3Dn3xx,p=
roduct2=3Dn310,serial2=3D316645B,claimed2=3DFalse,type=3Dn3xx,mgmt_addr=3D1=
92.168.2.230,addr1=3D192.168.10.2,addr2=3D192.168.20.2,master_clock_rate=3D=
122.88e6,use_dpdk=3D1*
> *[ERROR] [RPC] Someone tried to claim this device again (From:
> 192.168.2.254)*
> *[WARNING] [MPM.RPCServer] Someone tried to claim this device again (From=
:
> 192.168.2.254)*
> *Error: RuntimeError: Error during RPC call to `claim'. Error message:
> Someone tried to claim this device again (From: 192.168.2.254)*
> *root@seu73:/home/seu# *
> On 11/2/2019 02:30=EF=BC=8CSam Reiter<sam.reiter@ettus.com> <sam.reiter@e=
ttus.com>
> wrote=EF=BC=9A
>
> Panny Wang,
>
> I notice that you're only specifying a single streaming address in your
> call to benchmark rate, implying that you're only leveraging a single 10G=
bE
> link. You can specify "addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx=
>" in
> your device args.
>
> Best,
>
> Sam Reiter
> SDR Applications Engineer
> Ettus Research
>
> On Wed, Oct 30, 2019 at 3:20 AM =E7=8E=8B=E7=9B=BC via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>  Nate.I want to use DPDK in UHD with N310 follow
>> https://files.ettus.com/manual/page_dpdk.html
>> <https://files.ettus.com/manual/page_dpdk.html.>,but the result is not s=
atisfactory.I
>> got you have some research about this from the user-list emails(*With an
>> i7-4790k / Intel x520-DA2 and N310, to stream at full duplex, over two
>> channels at 125 MS/s, the lowest I can run my CPU clock freq at without
>> flow control errors is 3.8 GHz using benchmark_rate and the native
>> networking stack. Using DPDK I can run 2x2 @ 125 MS/s with my CPU freq
>> locked at 1.5 GHz with no flow control errors. *).
>> May be you can do me a favor and have some idea about my quesion.
>> (1) I use benchmark_rate to test the streaming performance, I only got
>> 122.88MS/s for 1channel, or 61.44MS/s for 2x2. run with 2x2@122.88MS/s ,
>> a lot of samples dropped.
>> Unfortuately, my destination is 4x4@122.88MS/s. I don't know is it
>> possible for my present host machine, or what configuration of host
>> machine should have?
>> ubuntu server 18.04    uhd:3.14.1.1  dpdk 17.11.6   dual 10GbE links (XG
>> image loaded)
>> host machine: 4 node, 8 cores in each node, tota 32 cores, cpu: Intel(R)
>> Xeon(R) CPU E5-4650 0 @ 2.70GHz
>> more informations about my host machine is in the
>> attchachment.(hypethread closed, cpufrequtils GOVERNOR=3D"perfomance")
>> *   --args
>> "type=3Dn3xx,mgmt_addr=3D192.168.1.104,addr=3D192.168.20.2,master_clock_=
rate=3D122.88e6,use_dpdk=3D1"
>> \*
>> *   --duration 60 \*
>> *   --channels "0,1" \*
>> *   --rx_rate 122.88e6 \*
>> *   --rx_subdev "A:0 A:1" \*
>> *   --tx_rate 122.88e6 \*
>> *   --tx_subdev "A:0 A:1" *
>> *   Benchmark rate summary:*
>> *     Num received samples:     2744145668*
>> *  Num dropped samples:      6030320380*
>> *  Num overruns detected:    921*
>> *  Num transmitted samples:  14684137560*
>> *  Num sequence errors (Tx): 0*
>> *  Num sequence errors (Rx): 0*
>> *  Num underruns detected:   67231*
>> *  Num late commands:        0*
>> *  Num timeouts (Tx):        0*
>> *  Num timeouts (Rx):        0*
>>
>> (2) In the  txrx_loopback_to_file test ,when I use the default --setting
>> for 4*4channels, there is a error *UUUUError: Receiver error
>> ERROR_CODE_LATE_COMMAND* .
>> I change it to --setting 1 ,it works.
>> I want to know the influence to my streaming or sample datas if 1
>> increase  --setting?
>> *(--settling arg (=3D0.20000000000000001) settling time (seconds)
>> before receiving)*
>>
>> Much appreciated.
>>
>> Regards,
>> Panny Wang
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000de7ea105968af35b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Panny Wang,</div><div><br></div><div>You&#39;re c=
orrect, you should specify a second address with addr/second_addr, rather t=
han addr0/addr1 - my bad. [1]</div><div><br></div><div>Assuming you&#39;re =
using both 10GbE links correctly, my next step would be to investigate the =
processor you&#39;re using. Something with a higher clock speed is generall=
y recommended for higher streaming rates. <br></div><div><br></div><div>Wou=
ld you be able to send over the output of:</div><div><br></div><div><b>cpuf=
req-info &amp;&amp; ifconfig</b></div><div><br></div><div>Best,</div><div><=
br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=
=A0<div><br></div></div></div></div></div></div></div><div>[1] <a href=3D"h=
ttps://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X300/X310">h=
ttps://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X300/X310</a=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sun, Nov 3, 2019 at 8:53 PM =E7=8E=8B=E7=9B=BC &lt;<a href=3D"mai=
lto:ruoyilei@126.com">ruoyilei@126.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">

   =20

<div>

<div style=3D"font-family:=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,Verdana,&quo=
t;Microsoft Yahei&quot;,SimSun,sans-serif;font-size:14px;line-height:1.6">
    <div></div><div>
    <div>Hello,</div><div><span style=3D"line-height:22.4px;font-family:ver=
dana,sans-serif">Sam Reiter.=C2=A0</span><span style=3D"line-height:22.4px;=
font-family:verdana,sans-serif">When=C2=A0</span><span style=3D"line-height=
:22.4px;font-family:verdana,sans-serif">leveraging</span><span style=3D"lin=
e-height:22.4px;color:rgb(49,53,59);font-family:verdana,sans-serif">=C2=A0d=
ual 10GbE links,I=C2=A0</span><span style=3D"line-height:22.4px;color:rgb(4=
9,53,59);font-family:verdana,sans-serif">=C2=A0</span><span style=3D"line-h=
eight:22.4px;font-family:verdana,sans-serif">specify&quot;</span><span styl=
e=3D"line-height:22.4px;font-family:verdana,sans-serif">=C2=A0</span><font =
face=3D"verdana, sans-serif">addr=3D192.168.20.2,second_addr=3D192.168.10.2=
&quot;,</font><span style=3D"font-family:verdana,sans-serif;line-height:22.=
4px">last email I didn&#39;t give the example=C2=A0</span><font face=3D"ver=
dana, sans-serif">. The result is not much diffrent with use=C2=A0</font><s=
pan style=3D"line-height:22.4px;font-family:verdana,sans-serif">a single 10=
GbE link.</span></div><div><span style=3D"line-height:22.4px;font-family:ve=
rdana,sans-serif">I think it is =C2=A0</span><span style=3D"font-family:ver=
dana,sans-serif;line-height:22.4px">&quot;</span><span style=3D"font-family=
:verdana,sans-serif;line-height:22.4px">addr</span><span style=3D"font-fami=
ly:verdana,sans-serif;line-height:22.4px">=3D&lt;xxx.xxx.xxx.xxx&gt;,</span=
><span style=3D"font-family:verdana,sans-serif;line-height:22.4px">second_a=
ddr</span><span style=3D"font-family:verdana,sans-serif;line-height:22.4px"=
>=3D&lt;xxx.xxx.xxx.xxx&gt;&quot; but not=C2=A0</span><span style=3D"font-f=
amily:verdana,sans-serif;line-height:22.4px">&quot;addr0=3D&lt;xxx.xxx.xxx.=
xxx&gt;,addr1=3D&lt;xxx.xxx.xxx.xxx&gt;&quot;. when use=C2=A0</span><span s=
tyle=3D"line-height:22.4px;font-family:verdana,sans-serif">=C2=A0</span><sp=
an style=3D"line-height:22.4px;font-family:verdana,sans-serif">&quot;addr0=
=3D&lt;xxx.xxx.xxx.xxx&gt;,addr1=3D&lt;xxx.xxx.xxx.xxx&gt;&quot;,I get erro=
rs:</span></div><div><div><font style=3D"font-size:12px" size=3D"2" face=3D=
"verdana, sans-serif"><i>[INFO] [MPMD] Initializing 3 device(s) in parallel=
 with args: mgmt_addr0=3D192.168.2.230,type0=3Dn3xx,product0=3Dn310,serial0=
=3D316645B,claimed0=3DFalse,mgmt_addr1=3D192.168.2.230,type1=3Dn3xx,product=
1=3Dn310,serial1=3D316645B,claimed1=3DFalse,mgmt_addr2=3D192.168.2.230,type=
2=3Dn3xx,product2=3Dn310,serial2=3D316645B,claimed2=3DFalse,type=3Dn3xx,mgm=
t_addr=3D192.168.2.230,addr1=3D192.168.10.2,addr2=3D192.168.20.2,master_clo=
ck_rate=3D122.88e6,use_dpdk=3D1</i></font></div><div><font style=3D"font-si=
ze:12px" size=3D"2" face=3D"verdana, sans-serif"><i>[ERROR] [RPC] Someone t=
ried to claim this device again (From: 192.168.2.254)</i></font></div><div>=
<font style=3D"font-size:12px" size=3D"2" face=3D"verdana, sans-serif"><i>[=
WARNING] [MPM.RPCServer] Someone tried to claim this device again (From: 19=
2.168.2.254)</i></font></div><div><font style=3D"font-size:12px" size=3D"2"=
 face=3D"verdana, sans-serif"><i>Error: RuntimeError: Error during RPC call=
 to `claim&#39;. Error message: Someone tried to claim this device again (F=
rom: 192.168.2.254)</i></font></div><div><font style=3D"font-size:12px" siz=
e=3D"2" face=3D"verdana, sans-serif"><i>root@seu73:/home/seu#=C2=A0</i></fo=
nt></div></div><div id=3D"gmail-m_-4323938323390205694ntes-pcmac-signature"=
 style=3D"font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;">
 </div>
</div><div style=3D"background-color:rgb(242,242,242);color:black;padding-t=
op:6px;padding-bottom:6px;border-radius:3px;margin-top:45px;margin-bottom:2=
0px;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;">
    <div style=3D"font-size:12px;line-height:1.5;word-break:break-all;margi=
n-left:10px;margin-right:10px">On <span>11/2/2019 02:30</span>=EF=BC=8C<a s=
tyle=3D"text-decoration:none;color:rgb(42,131,242)" href=3D"mailto:sam.reit=
er@ettus.com" target=3D"_blank">Sam Reiter&lt;sam.reiter@ettus.com&gt;</a> =
wrote=EF=BC=9A</div>
</div>
<blockquote id=3D"gmail-m_-4323938323390205694ntes-pcmail-quote" style=3D"m=
argin:0px;padding:0px;font-size:14px;font-family:=E5=BE=AE=E8=BD=AF=E9=9B=
=85=E9=BB=91">
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
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">

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
88MS/s for 1channel, or 61.44MS/s for 2x2. run with <a href=3D"mailto:2x2@1=
22.88MS" target=3D"_blank">2x2@122.88MS</a>/s , a lot of samples dropped.=
=C2=A0</span></div><div><span style=3D"color:rgb(49,53,59);font-family:verd=
ana,sans-serif;line-height:22.4px">Unfortuately, my destination is <a href=
=3D"mailto:4x4@122.88MS" target=3D"_blank">4x4@122.88MS</a>/s. I don&#39;t =
know is it possible for my present=C2=A0</span><span style=3D"color:rgb(49,=
53,59);font-family:verdana,sans-serif;line-height:22.4px">host machine, or =
what configuration of host machine should have?</span></div><div><span styl=
e=3D"color:rgb(49,53,59);font-family:verdana,sans-serif;line-height:22.4px"=
>ubuntu server 18.04 =C2=A0 =C2=A0uhd:3.14.1.1 =C2=A0dpdk 17.11.6 =C2=A0</s=
pan><span style=3D"color:rgb(49,53,59);font-family:verdana,sans-serif;line-=
height:22.4px">=C2=A0dual 10GbE links (</span><span style=3D"color:rgb(49,5=
3,59);font-family:verdana,sans-serif;line-height:22.4px">XG image loaded)</=
span></div><div>host machine: 4 node, 8 cores in each node, tota 32 cores, =
cpu:=C2=A0<span style=3D"line-height:1.6">Intel(R) Xeon(R) CPU E5-4650 0 @ =
2.70GHz</span></div><div>more informations about my host machine is in the =
attchachment.(hypethread closed, cpufrequtils GOVERNOR=3D&quot;perfomance&q=
uot;)</div><div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 =
=C2=A0--args &quot;type=3Dn3xx,mgmt_addr=3D192.168.1.104,addr=3D192.168.20.=
2,master_clock_rate=3D122.88e6,use_dpdk=3D1&quot; \</font></i></div><div><i=
><font style=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0--duration 60 \</fo=
nt></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 =C2=
=A0--channels &quot;0,1&quot; \</font></i></div><div><i><font style=3D"font=
-size:12px" size=3D"2">=C2=A0 =C2=A0--rx_rate 122.88e6 \</font></i></div><d=
iv><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0--rx_subdev &q=
uot;A:0 A:1&quot; \</font></i></div><div><i><font style=3D"font-size:12px" =
size=3D"2">=C2=A0 =C2=A0--tx_rate 122.88e6 \</font></i></div><div><i><font =
style=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0--tx_subdev &quot;A:0 A:1&=
quot;=C2=A0</font></i></div><div><i><font style=3D"font-size:12px" size=3D"=
2">=C2=A0 =C2=A0Benchmark rate summary:</font></i></div><div><i><font style=
=3D"font-size:12px" size=3D"2">=C2=A0 =C2=A0 =C2=A0Num received samples: =
=C2=A0 =C2=A0 2744145668</font></i></div><div><i><font style=3D"font-size:1=
2px" size=3D"2">=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A06030320380<=
/font></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 Nu=
m overruns detected: =C2=A0 =C2=A0921</font></i></div><div><i><font style=
=3D"font-size:12px" size=3D"2">=C2=A0 Num transmitted samples: =C2=A0146841=
37560</font></i></div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=
=A0 Num sequence errors (Tx): 0</font></i></div><div><i><font style=3D"font=
-size:12px" size=3D"2">=C2=A0 Num sequence errors (Rx): 0</font></i></div><=
div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 Num underruns detec=
ted: =C2=A0 67231</font></i></div><div><i><font style=3D"font-size:12px" si=
ze=3D"2">=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00</font></i><=
/div><div><i><font style=3D"font-size:12px" size=3D"2">=C2=A0 Num timeouts =
(Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00</font></i></div><div><i><font style=3D"f=
ont-size:12px" size=3D"2">=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =
=C2=A00</font></i></div></div><h1><br></h1>
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
    <div id=3D"gmail-m_-4323938323390205694gmail-m_7026444473092057810ntes-=
pcmac-signature">
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
</blockquote>
</div>
</div>
</blockquote></div>

--000000000000de7ea105968af35b--


--===============5673415589288199919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5673415589288199919==--

