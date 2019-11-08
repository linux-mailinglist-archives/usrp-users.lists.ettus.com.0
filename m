Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A966F5492
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2019 20:23:13 +0100 (CET)
Received: from [::1] (port=54442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iT9qe-0005EU-7m; Fri, 08 Nov 2019 14:23:08 -0500
Received: from mail-lj1-f177.google.com ([209.85.208.177]:36559)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iT9qa-00059Z-JJ
 for usrp-users@lists.ettus.com; Fri, 08 Nov 2019 14:23:04 -0500
Received: by mail-lj1-f177.google.com with SMTP id k15so7390692lja.3
 for <usrp-users@lists.ettus.com>; Fri, 08 Nov 2019 11:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qjp24aQzz++CGGeqDNQcaiGXqN93mdPeWjUz47ENgwE=;
 b=lAheNyYRp+f0IZg0M5vtqgww9yAd6K4ec0vJbtCEAsFcRRhPogR6mvEHzdTJAPjYvf
 GnAJr3Y3gJecq1b3HnhJ1cIU1nyaXJRBhfOtHpJdJukumcymueNQcGZ9HYZ6G0rviSll
 QFV1gmfS4bTPpG0ihgcpZ2Ta+3afOe3jhqpGtRczrUAnqR/rb9Z+W0W//+Z7XDsVy+rb
 Ft7jRBR5E0fxAVKfx8QBU3xSawDlOLasW/qnyidgoKQqsMN8bB2Im6dOXL9IjGNtHgY7
 fuzcIq0vjRAqpOf0b/JuniVBjMoFBPZqSyyZcHyXqlvfIYjhdTjxC1TwqFdkbUJJWg2p
 8ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qjp24aQzz++CGGeqDNQcaiGXqN93mdPeWjUz47ENgwE=;
 b=mJSg/qOLbxc+gLgEX90Ng06wSfTEslgegUUIWz8hhlV8y6ztx/weckeN6gVGifjNKS
 8bsR81JIIeanjmNddnlC8ZAdpXb/PDbs+AjNqWzF+dtQdSyc5OqhJQAcVyY9UoXV5TBl
 1IAZ8/mI2AViYPOe7tJuC87NioTGtBIQqj2XuiEkG2xttxpsOrvgXrTTV/aebXSDcXY2
 HvT1oTsg4auDxX3KmL0CaZu0viaGR//rSMYl7ko6GJ7wv9MCMiG7ejvKP2x8fUmvcY8Z
 2D+UJQbKkIcPix8RFQZW6LPB3m9A3uf66nJivuYS7Od1rllQI75z1Fe40zj002t/mRA7
 2bdQ==
X-Gm-Message-State: APjAAAUwxxBpR7TdbA6CYNmIK68/usc1Xrs21nbhXVdBc94ouYirorZ9
 RtaaU87p6hRGdLxs9J1igl9szDqCKpwrewpRr+cmU22e
X-Google-Smtp-Source: APXvYqwLntH/cx7BPROUM40fAOcSO2T7yeVqa/okQsK3tf0vRTZUN/vX2/90gbaum6B3zE9vTTo0cv8PuP+v7JKI0oo=
X-Received: by 2002:a2e:7016:: with SMTP id l22mr7971832ljc.227.1573240943128; 
 Fri, 08 Nov 2019 11:22:23 -0800 (PST)
MIME-Version: 1.0
References: <4641024f.15948.16e1bbf492a.Coremail.ruoyilei@126.com>
 <CANf970aHdsoTV5QAnECkpT3cv-2dGYJzCLr+bAYC8b0=fBAn2g@mail.gmail.com>
 <7524c856.d8d.16e3454fe58.Coremail.ruoyilei@126.com>
 <CANf970bfwGT5=Gco_YwiVG0gyra6_TWVXU_OwcC86Ka0j_DfEA@mail.gmail.com>
 <62834477.8379.16e393099c8.Coremail.ruoyilei@126.com>
 <CANf970ZD5s9YoWE42BFLZ4BW7A==w3Nrj505Qr+oXbUsoPvXNQ@mail.gmail.com>
 <003701d595d5$267a9c80$736fd580$@126.com>
In-Reply-To: <003701d595d5$267a9c80$736fd580$@126.com>
Date: Fri, 8 Nov 2019 13:22:11 -0600
Message-ID: <CANf970bzx0Rzw8YwukGeAj3th3O15Cy+iZ-L3ipWBC08x6bsqQ@mail.gmail.com>
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3747005118224676244=="
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

--===============3747005118224676244==
Content-Type: multipart/alternative; boundary="0000000000008fc52c0596dab35d"

--0000000000008fc52c0596dab35d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Panny Wang,

That's about the expected behavior currently. From the test benchmarks that
we have published, 3x3 @122.88 is not something that has been sustained
without some kind of flow control issue. If you want to explore building a
system to move towards this, I would recommend that you start with your
CPU. Processor clock speed is key in boosting the throughput of your host
machine, but 3x3 @122.88 isn't something I can guarantee you'll be able to
hit at this time.

Sam Reiter

On Thu, Nov 7, 2019 at 7:38 PM <ruoyilei@126.com> wrote:

> Hello, Sam Reiter.
>
> Thank you for your reply.I have a test with benchmark, 2x2 @122.88M is
> ok(maybe the cpu =E2=80=9Cperformance=E2=80=9D is diabled in the initial =
test).I give the
> command with 3x3@122.88M. The output is in the attachment.
>
>      /usr/local/lib/uhd/examples/benchmark_rate  \
>
>     --args
> "type=3Dn3xx,mgmt_addr=3D192.168.2.230,addr=3D192.168.10.2,second_addr=3D=
192.168.20.2,master_clock_rate=3D122.88e6,use_dpdk=3D1"
> \
>
>     --duration 60 \
>
>     --channels "0,1,2" \
>
>     --rx_rate 122.88e6 \
>
>     --rx_subdev "A:0 A:1 B:0" \
>
>     --tx_rate 122.88e6 \
>
>     --tx_subdev "A:0 A:1 B:0"
>
>
>
> Best,
>
> Panny Wang
>
>
>
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:* Sam Reiter <sam.reiter@ettus.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* 2019=E5=B9=B411=E6=9C=888=E6=97=
=A5 4:41
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* =E7=8E=8B=E7=9B=BC <ruoyilei@126.com>
> *=E6=8A=84=E9=80=81:* usrp-users@lists.ettus.com
> *=E4=B8=BB=E9=A2=98:* Re: [USRP-users] questions about uhd-dpdk with n310
>
>
>
> Panny Wang,
>
>
>
> The cpufreq-info looks good, but the ifconfig at the bottom is a bit
> confusing with what you've sent over up to this point. Can you send the
> exact ./benchmark_rate command that you're using (with all args included)
> to produce the output you sent over initially? The MPMD info in the last
> couple doesn't seem consistent with this ifconfig output:
>
>
>
> enp7s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 192.168.1.73  netmask 255.255.255.0  broadcast 192.168.1.255
>         inet6 fe80::9604:9cff:fed2:b1a3  prefixlen 64  scopeid 0x20<link>
>         ether 94:04:9c:d2:b1:a3  txqueuelen 1000  (Ethernet)
>         RX packets 114457  bytes 8586410 (8.5 MB)
>         RX errors 0  dropped 3  overruns 0  frame 0
>         TX packets 179513  bytes 37029298 (37.0 MB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>         device memory 0x95e80000-95efffff
>
> enp7s0f1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>         inet 192.168.2.254  netmask 255.255.255.0  broadcast 192.168.2.25=
5
>         inet6 fe80::9604:9cff:fed2:b1a4  prefixlen 64  scopeid 0x20<link>
>         ether 94:04:9c:d2:b1:a4  txqueuelen 1000  (Ethernet)
>         RX packets 3404  bytes 296849 (296.8 KB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 2196  bytes 243446 (243.4 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>         device memory 0x95e00000-95e7ffff
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>         inet 127.0.0.1  netmask 255.0.0.0
>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>         loop  txqueuelen 1000  (Local Loopback)
>         RX packets 63270  bytes 4016936 (4.0 MB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 63270  bytes 4016936 (4.0 MB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>
>
> Sam Reiter
>
>
>
> On Mon, Nov 4, 2019 at 7:32 PM =E7=8E=8B=E7=9B=BC <ruoyilei@126.com> wrot=
e:
>
> Hey Sam Reiter,
>
> The output of "*cpufreq-info && ifconfig*" is in the attchment. At the
> same time I put more information about my system there.
>
> Both 10GbE links are binded to dpdk, so ifconfig can not output them.My
> cpu clock is 2.7GHz,maybe it is not powerfull enough.
>
> It would be great If you can help me confirm my configuration .
>
> *=E7=8E=8B=E7=9B=BC*
>
> ruoyilei@126.com
>
> =E7=AD=BE=E5=90=8D=E7=94=B1 =E7=BD=91=E6=98=93=E9=82=AE=E7=AE=B1=E5=A4=A7=
=E5=B8=88 <https://mail.163.com/dashi/dlpro.html?from=3Dmail81> =E5=AE=9A=
=E5=88=B6
>
> On 11/5/2019 04:13=EF=BC=8CSam Reiter<sam.reiter@ettus.com> <sam.reiter@e=
ttus.com>
> wrote=EF=BC=9A
>
> Hey Panny Wang,
>
>
>
> You're correct, you should specify a second address with addr/second_addr=
,
> rather than addr0/addr1 - my bad. [1]
>
>
>
> Assuming you're using both 10GbE links correctly, my next step would be t=
o
> investigate the processor you're using. Something with a higher clock spe=
ed
> is generally recommended for higher streaming rates.
>
>
>
> Would you be able to send over the output of:
>
>
>
> *cpufreq-info && ifconfig*
>
>
>
> Best,
>
>
>
> Sam Reiter
>
>
>
> [1]
> https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_the_USRP_X300/X310
>
>
>
> On Sun, Nov 3, 2019 at 8:53 PM =E7=8E=8B=E7=9B=BC <ruoyilei@126.com> wrot=
e:
>
> Hello,
>
> Sam Reiter. When leveraging dual 10GbE links,I  specify" addr=3D192.168.2=
0.2,second_addr=3D192.168.10.2",last
> email I didn't give the example . The result is not much diffrent with
> use a single 10GbE link.
>
> I think it is  "addr=3D<xxx.xxx.xxx.xxx>,second_addr=3D<xxx.xxx.xxx.xxx>"=
 but
> not "addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>". when
> use  "addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx>",I get errors:
>
> *[INFO] [MPMD] Initializing 3 device(s) in parallel with args:
> mgmt_addr0=3D192.168.2.230,type0=3Dn3xx,product0=3Dn310,serial0=3D316645B=
,claimed0=3DFalse,mgmt_addr1=3D192.168.2.230,type1=3Dn3xx,product1=3Dn310,s=
erial1=3D316645B,claimed1=3DFalse,mgmt_addr2=3D192.168.2.230,type2=3Dn3xx,p=
roduct2=3Dn310,serial2=3D316645B,claimed2=3DFalse,type=3Dn3xx,mgmt_addr=3D1=
92.168.2.230,addr1=3D192.168.10.2,addr2=3D192.168.20.2,master_clock_rate=3D=
122.88e6,use_dpdk=3D1*
>
> *[ERROR] [RPC] Someone tried to claim this device again (From:
> 192.168.2.254)*
>
> *[WARNING] [MPM.RPCServer] Someone tried to claim this device again (From=
:
> 192.168.2.254)*
>
> *Error: RuntimeError: Error during RPC call to `claim'. Error message:
> Someone tried to claim this device again (From: 192.168.2.254)*
>
> *root@seu73:/home/seu# *
>
> On 11/2/2019 02:30=EF=BC=8CSam Reiter<sam.reiter@ettus.com> <sam.reiter@e=
ttus.com>
> wrote=EF=BC=9A
>
> Panny Wang,
>
>
>
> I notice that you're only specifying a single streaming address in your
> call to benchmark rate, implying that you're only leveraging a single 10G=
bE
> link. You can specify "addr0=3D<xxx.xxx.xxx.xxx>,addr1=3D<xxx.xxx.xxx.xxx=
>" in
> your device args.
>
>
>
> Best,
>
> Sam Reiter
> SDR Applications Engineer
> Ettus Research
>
>
>
> On Wed, Oct 30, 2019 at 3:20 AM =E7=8E=8B=E7=9B=BC via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello,
>
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
>
> May be you can do me a favor and have some idea about my quesion.
>
> (1) I use benchmark_rate to test the streaming performance, I only got
> 122.88MS/s for 1channel, or 61.44MS/s for 2x2. run with 2x2@122.88MS/s ,
> a lot of samples dropped.
>
> Unfortuately, my destination is 4x4@122.88MS/s. I don't know is it
> possible for my present host machine, or what configuration of host machi=
ne
> should have?
>
> ubuntu server 18.04    uhd:3.14.1.1  dpdk 17.11.6   dual 10GbE links (XG
> image loaded)
>
> host machine: 4 node, 8 cores in each node, tota 32 cores, cpu: Intel(R)
> Xeon(R) CPU E5-4650 0 @ 2.70GHz
>
> more informations about my host machine is in the attchachment.(hypethrea=
d
> closed, cpufrequtils GOVERNOR=3D"perfomance")
>
> *   --args
> "type=3Dn3xx,mgmt_addr=3D192.168.1.104,addr=3D192.168.20.2,master_clock_r=
ate=3D122.88e6,use_dpdk=3D1"
> \*
>
> *   --duration 60 \*
>
> *   --channels "0,1" \*
>
> *   --rx_rate 122.88e6 \*
>
> *   --rx_subdev "A:0 A:1" \*
>
> *   --tx_rate 122.88e6 \*
>
> *   --tx_subdev "A:0 A:1" *
>
> *   Benchmark rate summary:*
>
> *     Num received samples:     2744145668*
>
> *  Num dropped samples:      6030320380*
>
> *  Num overruns detected:    921*
>
> *  Num transmitted samples:  14684137560*
>
> *  Num sequence errors (Tx): 0*
>
> *  Num sequence errors (Rx): 0*
>
> *  Num underruns detected:   67231*
>
> *  Num late commands:        0*
>
> *  Num timeouts (Tx):        0*
>
> *  Num timeouts (Rx):        0*
>
>
> (2) In the  txrx_loopback_to_file test ,when I use the default --setting
> for 4*4channels, there is a error *UUUUError: Receiver error
> ERROR_CODE_LATE_COMMAND* .
>
> I change it to --setting 1 ,it works.
>
> I want to know the influence to my streaming or sample datas if 1
> increase  --setting?
>
> *(--settling arg (=3D0.20000000000000001) settling time (seconds)
> before receiving)*
>
>
>
> Much appreciated.
>
>
>
> Regards,
>
> Panny Wang
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000008fc52c0596dab35d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Panny Wang,</div><div><br></div><div>That&#39;s about=
 the expected behavior currently. From the test benchmarks that we have pub=
lished, 3x3 @122.88 is not something that has been sustained without some k=
ind of flow control issue. If you want to explore building a system to move=
 towards this, I would recommend that you start with your CPU. Processor cl=
ock speed is key in boosting the throughput of your host machine, but 3x3=
=C2=A0@122.88 isn&#39;t something I can guarantee you&#39;ll be able to hit=
 at this time.=C2=A0 <br></div><div><br></div><div><div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr">Sam Reiter <br></div></div></div></div></div></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Nov 7, 2019 at 7:38 PM &lt;<a href=3D"mailto:ruoyilei@126.com">ruoyi=
lei@126.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div lang=3D"ZH-CN"><div><p class=3D"MsoNormal"><span style=3D"f=
ont-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US">Hello, </spa=
n><span style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-=
US">Sam Reiter.<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US">Thank you=
 for your reply.I have a test with benchmark, 2x2 @122.88M is ok(maybe the =
cpu =E2=80=9Cperformance=E2=80=9D is diabled in the initial test).I give th=
e command with <a href=3D"mailto:3x3@122.88M" target=3D"_blank">3x3@122.88M=
</a>. The output is in the attachment.<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" =
lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0 /usr/local/lib/uhd/examples/benchma=
rk_rate=C2=A0 \<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US">=C2=A0=
=C2=A0=C2=A0 --args &quot;type=3Dn3xx,mgmt_addr=3D192.168.2.230,addr=3D192.=
168.10.2,second_addr=3D192.168.20.2,master_clock_rate=3D122.88e6,use_dpdk=
=3D1&quot; \<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"=
font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US">=C2=A0=C2=
=A0=C2=A0 --duration 60 \<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0 --channels &quot;0,1,2&quot; \<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=
=89=E7=BA=BF" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 --rx_rate 122.88e6 \<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;fo=
nt-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 --rx_subdev=
 &quot;A:0 A:1 B:0&quot; \<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-U=
S">=C2=A0=C2=A0=C2=A0 --tx_rate 122.88e6 \<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=
=BF" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 --tx_subdev &quot;A:0 A:1 B:0&quot;<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10.=
5pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US"><u></u>=C2=A0<u></u></sp=
an></p><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=
=E7=AD=89=E7=BA=BF" lang=3D"EN-US">Best,<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=
=BF" lang=3D"EN-US">Panny Wang<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"=
EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span style=
=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF">=E5=8F=91=E4=BB=B6=E4=BA=
=BA<span lang=3D"EN-US">:</span></span></b><span style=3D"font-size:11pt;fo=
nt-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-US"> Sam Reiter &lt;<a href=3D"mai=
lto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; <b=
r></span><b><span style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF">=
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4<span lang=3D"EN-US">:</span></span></b=
><span style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF" lang=3D"EN-U=
S"> 2019</span><span style=3D"font-size:11pt;font-family:=E7=AD=89=E7=BA=BF=
">=E5=B9=B4<span lang=3D"EN-US">11</span>=E6=9C=88<span lang=3D"EN-US">8</s=
pan>=E6=97=A5<span lang=3D"EN-US"> 4:41<br></span><b>=E6=94=B6=E4=BB=B6=E4=
=BA=BA<span lang=3D"EN-US">:</span></b><span lang=3D"EN-US"> </span>=E7=8E=
=8B=E7=9B=BC<span lang=3D"EN-US"> &lt;<a href=3D"mailto:ruoyilei@126.com" t=
arget=3D"_blank">ruoyilei@126.com</a>&gt;<br></span><b>=E6=8A=84=E9=80=81<s=
pan lang=3D"EN-US">:</span></b><span lang=3D"EN-US"> <a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br=
></span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</span></b><span lang=3D=
"EN-US"> Re: [USRP-users] questions about uhd-dpdk with n310<u></u><u></u><=
/span></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<=
u></u></span></p><div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">Pann=
y Wang,<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span lan=
g=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal=
"><span lang=3D"EN-US">The cpufreq-info looks good, but the ifconfig at the=
 bottom is a bit confusing with what you&#39;ve sent over up to this point.=
 Can you send the exact ./benchmark_rate command that you&#39;re using (wit=
h all args included) to produce the output you sent over initially? The MPM=
D info in the last couple doesn&#39;t seem consistent with this ifconfig ou=
tput:<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span lang=
=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal"=
><span lang=3D"EN-US">enp7s0f0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTIC=
AST&gt; =C2=A0mtu 1500<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.1.73 =C2=
=A0netmask 255.255.255.0 =C2=A0broadcast 192.168.1.255<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 inet6 fe80::9604:9cff:fed2:b1a3 =C2=A0prefixlen 64 =C2=A0scopeid=
 0x20&lt;link&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 94:04:9c:d2:b1:a3 =
=C2=A0txqueuelen 1000 =C2=A0(Ethernet)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX pa=
ckets 114457 =C2=A0bytes 8586410 (8.5 MB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX=
 errors 0 =C2=A0dropped 3 =C2=A0overruns 0 =C2=A0frame 0<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 TX packets 179513 =C2=A0bytes 37029298 (37.0 MB)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0=
 =C2=A0collisions 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 device memory 0x95e80000=
-95efffff =C2=A0<br><br>enp7s0f1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULT=
ICAST&gt; =C2=A0mtu 8000<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.2.254 =
=C2=A0netmask 255.255.255.0 =C2=A0broadcast 192.168.2.255<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 inet6 fe80::9604:9cff:fed2:b1a4 =C2=A0prefixlen 64 =C2=A0scop=
eid 0x20&lt;link&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 94:04:9c:d2:b1:a4=
 =C2=A0txqueuelen 1000 =C2=A0(Ethernet)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX p=
ackets 3404 =C2=A0bytes 296849 (296.8 KB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX=
 errors 0 =C2=A0dropped 0 =C2=A0overruns 0 =C2=A0frame 0<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 TX packets 2196 =C2=A0bytes 243446 (243.4 KB)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0 =
=C2=A0collisions 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 device memory 0x95e00000-=
95e7ffff =C2=A0<br><br>lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; =C2=A0mtu =
65536<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1 =C2=A0netmask 255.0.0.0=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1 =C2=A0prefixlen 128 =C2=A0scopeid=
 0x10&lt;host&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop =C2=A0txqueuelen 1000=
 =C2=A0(Local Loopback)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 63270 =C2=
=A0bytes 4016936 (4.0 MB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0=
dropped 0 =C2=A0overruns 0 =C2=A0frame 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX =
packets 63270 =C2=A0bytes 4016936 (4.0 MB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 T=
X errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0 =C2=A0collisions 0<u>=
</u><u></u></span></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US=
"><u></u>=C2=A0<u></u></span></p></div><div><div><div><div><div><p class=3D=
"MsoNormal"><span lang=3D"EN-US">Sam Reiter <u></u><u></u></span></p></div>=
</div></div></div></div></div><p class=3D"MsoNormal"><span lang=3D"EN-US"><=
u></u>=C2=A0<u></u></span></p><div><div><p class=3D"MsoNormal"><span lang=
=3D"EN-US">On Mon, Nov 4, 2019 at 7:32 PM </span>=E7=8E=8B=E7=9B=BC<span la=
ng=3D"EN-US"> &lt;<a href=3D"mailto:ruoyilei@126.com" target=3D"_blank">ruo=
yilei@126.com</a>&gt; wrote:<u></u><u></u></span></p></div><blockquote styl=
e=3D"border-color:currentcolor currentcolor currentcolor rgb(204,204,204);b=
order-style:none none none solid;border-width:medium medium medium 1pt;padd=
ing:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm"><div><div><div><div=
><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;\=
005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">Hey=C2=A0Sam R=
eiter,<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span styl=
e=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,=
sans-serif" lang=3D"EN-US">The output of &quot;<b>cpufreq-info &amp;&amp; i=
fconfig</b>&quot; is in the attchment. At the same time I put more informat=
ion about my system there.=C2=A0<u></u><u></u></span></p></div><div><p clas=
s=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\0=
08f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">Both 10GbE links are b=
inded to dpdk, so ifconfig can not output them.My cpu clock is 2.7GHz,maybe=
 it is not powerfull enough.<u></u><u></u></span></p></div><div><p class=3D=
"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6=
f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">It would be great=C2=A0If =
you can help me=C2=A0confirm=C2=A0my configuration .=C2=A0<u></u><u></u></s=
pan></p></div><div id=3D"gmail-m_1619711578498826026gmail-m_588403982258394=
195ntes-pcmac-signature"><div><div style=3D"border-color:currentcolor curre=
ntcolor rgb(230,230,230);border-style:none none solid;border-width:medium m=
edium 1pt;padding:0cm 0cm 5pt;margin-bottom:7.5pt;display:inline-block"><ta=
ble style=3D"width:100%;border-collapse:collapse" width=3D"100%" cellspacin=
g=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td style=3D"width:28.5pt=
;padding:0cm" width=3D"38"><p class=3D"MsoNormal" style=3D"word-break:break=
-all"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\000=
17ed1&quot;,serif;color:rgb(155,158,161)" lang=3D"EN-US"><img style=3D"widt=
h: 0.3958in; height: 0.3958in;" id=3D"gmail-m_1619711578498826026_x0000_i10=
25" src=3D"https://mail-online.nosdn.127.net/qiyelogo/defaultAvatar.png" wi=
dth=3D"38" height=3D"38" border=3D"0"><u></u><u></u></span></p></td><td sty=
le=3D"padding:0cm 0cm 0cm 7.5pt"><div><p class=3D"MsoNormal" style=3D"word-=
break:break-all"><b><span style=3D"color:rgb(49,53,59)">=E7=8E=8B=E7=9B=BC<=
/span></b><b><span style=3D"font-family:&quot;_ae 6f\002013c5\00017ed1&quot=
;,serif;color:rgb(49,53,59)" lang=3D"EN-US"><u></u><u></u></span></b></p></=
div></td></tr><tr><td colspan=3D"2" style=3D"width:100%;padding:7.5pt 0cm 0=
cm" width=3D"100%"><div><p class=3D"MsoNormal" style=3D"word-break:break-al=
l"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\00017e=
d1&quot;,serif;color:rgb(155,158,161)" lang=3D"EN-US"><a href=3D"mailto:ruo=
yilei@126.com" target=3D"_blank">ruoyilei@126.com</a><u></u><u></u></span><=
/p></div></td></tr></tbody></table></div></div><div><p class=3D"MsoNormal" =
style=3D"line-height:13.5pt"><span style=3D"font-size:9pt;font-family:&quot=
;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif;color:rgb(181,185,189)">=E7=
=AD=BE=E5=90=8D=E7=94=B1</span><span style=3D"font-size:9pt;font-family:&qu=
ot;_ae 6f\002013c5\00017ed1&quot;,serif;color:rgb(181,185,189)"> <span lang=
=3D"EN-US"><a href=3D"https://mail.163.com/dashi/dlpro.html?from=3Dmail81" =
target=3D"_blank"><span style=3D"font-family:&quot;\005fae\008f6f\0096c5\00=
9ed1&quot;,sans-serif;color:rgb(65,150,255);text-decoration:none" lang=3D"E=
N-US"><span lang=3D"EN-US">=E7=BD=91=E6=98=93=E9=82=AE=E7=AE=B1=E5=A4=A7=E5=
=B8=88</span></span></a> </span></span><span style=3D"font-size:9pt;font-fa=
mily:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif;color:rgb(181,185,=
189)">=E5=AE=9A=E5=88=B6</span><span style=3D"font-size:9pt;font-family:&qu=
ot;_ae 6f\002013c5\00017ed1&quot;,serif;color:rgb(181,185,189)"> <span lang=
=3D"EN-US"><u></u><u></u></span></span></p></div></div></div><div style=3D"=
margin-top:33.75pt;margin-bottom:15pt;border-radius:3px"><div style=3D"marg=
in-left:7.5pt;margin-right:7.5pt"><p class=3D"MsoNormal" style=3D"backgroun=
d:rgb(242,242,242) none repeat scroll 0% 0%;word-break:break-all"><span sty=
le=3D"font-size:9pt;font-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif;=
color:black" lang=3D"EN-US">On 11/5/2019 04:13</span><span style=3D"font-si=
ze:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif;colo=
r:black">=EF=BC=8C</span><span style=3D"font-size:9pt;font-family:&quot;_ae=
 6f\002013c5\00017ed1&quot;,serif;color:black" lang=3D"EN-US"><a href=3D"ma=
ilto:sam.reiter@ettus.com" target=3D"_blank"><span style=3D"color:rgb(42,13=
1,242);text-decoration:none">Sam Reiter&lt;sam.reiter@ettus.com&gt;</span><=
/a> wrote</span><span style=3D"font-size:9pt;font-family:&quot;\005fae\008f=
6f\0096c5\009ed1&quot;,sans-serif;color:black">=EF=BC=9A</span><span style=
=3D"font-size:9pt;font-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif;co=
lor:black"> <span lang=3D"EN-US"><u></u><u></u></span></span></p></div></di=
v><blockquote id=3D"gmail-m_1619711578498826026gmail-m_588403982258394195nt=
es-pcmail-quote"><div><div><p class=3D"MsoNormal"><span style=3D"font-size:=
10.5pt;font-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-U=
S">Hey Panny Wang,<u></u><u></u></span></p></div><div><p class=3D"MsoNormal=
"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\00017ed=
1&quot;,serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div><div><p =
class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6=
f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US">You&#39;re correct, you sho=
uld specify a second address with addr/second_addr, rather than addr0/addr1=
 - my bad. [1]<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><s=
pan style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\00017ed1&qu=
ot;,serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div><div><p clas=
s=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\00=
2013c5\00017ed1&quot;,serif" lang=3D"EN-US">Assuming you&#39;re using both =
10GbE links correctly, my next step would be to investigate the processor y=
ou&#39;re using. Something with a higher clock speed is generally recommend=
ed for higher streaming rates. <u></u><u></u></span></p></div><div><p class=
=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002=
013c5\00017ed1&quot;,serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><=
/div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-famil=
y:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US">Would you be a=
ble to send over the output of:<u></u><u></u></span></p></div><div><p class=
=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002=
013c5\00017ed1&quot;,serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><=
/div><div><p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt;font-fa=
mily:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US">cpufreq-inf=
o &amp;&amp; ifconfig</span></b><span style=3D"font-size:10.5pt;font-family=
:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US"><u></u><u></u><=
/span></p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt=
;font-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US"><u>=
</u>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal"><span style=
=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif=
" lang=3D"EN-US">Best,<u></u><u></u></span></p></div><div><p class=3D"MsoNo=
rmal"><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\000=
17ed1&quot;,serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div><div=
><div><div><div><div><div><p class=3D"MsoNormal"><span style=3D"font-size:1=
0.5pt;font-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US=
">Sam Reiter=C2=A0<u></u><u></u></span></p><div><p class=3D"MsoNormal"><spa=
n style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\00017ed1&quot=
;,serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div></div></div></=
div></div></div></div><div><p class=3D"MsoNormal"><span style=3D"font-size:=
10.5pt;font-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-U=
S">[1] <a href=3D"https://kb.ettus.com/Using_Dual_10_Gigabit_Ethernet_on_th=
e_USRP_X300/X310" target=3D"_blank">https://kb.ettus.com/Using_Dual_10_Giga=
bit_Ethernet_on_the_USRP_X300/X310</a><u></u><u></u></span></p></div></div>=
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;_a=
e 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></sp=
an></p><div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;fon=
t-family:&quot;_ae 6f\002013c5\00017ed1&quot;,serif" lang=3D"EN-US">On Sun,=
 Nov 3, 2019 at 8:53 PM </span><span style=3D"font-size:10.5pt;font-family:=
&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif">=E7=8E=8B=E7=9B=BC</sp=
an><span style=3D"font-size:10.5pt;font-family:&quot;_ae 6f\002013c5\00017e=
d1&quot;,serif" lang=3D"EN-US"> &lt;<a href=3D"mailto:ruoyilei@126.com" tar=
get=3D"_blank">ruoyilei@126.com</a>&gt; wrote:<u></u><u></u></span></p></di=
v><blockquote style=3D"border-color:currentcolor currentcolor currentcolor =
rgb(204,204,204);border-style:none none none solid;border-width:medium medi=
um medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm"><=
div><div><div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;f=
ont-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-=
US">Hello,<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span =
style=3D"font-size:10.5pt;font-family:&quot;Verdana&quot;,sans-serif" lang=
=3D"EN-US">Sam Reiter.=C2=A0When=C2=A0leveraging<span style=3D"color:rgb(49=
,53,59)">=C2=A0dual 10GbE links,I=C2=A0=C2=A0</span>specify&quot;=C2=A0addr=
=3D192.168.20.2,second_addr=3D192.168.10.2&quot;,last email I didn&#39;t gi=
ve the example=C2=A0. The result is not much diffrent with use=C2=A0a singl=
e 10GbE link.</span><span style=3D"font-size:10.5pt;font-family:&quot;\005f=
ae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></sp=
an></p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Verdana&quot;,sans-serif" lang=3D"EN-US">I think it is =C2=
=A0&quot;addr=3D&lt;xxx.xxx.xxx.xxx&gt;,second_addr=3D&lt;xxx.xxx.xxx.xxx&g=
t;&quot; but not=C2=A0&quot;addr0=3D&lt;xxx.xxx.xxx.xxx&gt;,addr1=3D&lt;xxx=
.xxx.xxx.xxx&gt;&quot;. when use=C2=A0=C2=A0&quot;addr0=3D&lt;xxx.xxx.xxx.x=
xx&gt;,addr1=3D&lt;xxx.xxx.xxx.xxx&gt;&quot;,I get errors:</span><span styl=
e=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,=
sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div><div><p clas=
s=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quot;Verdana&q=
uot;,sans-serif" lang=3D"EN-US">[INFO] [MPMD] Initializing 3 device(s) in p=
arallel with args: mgmt_addr0=3D192.168.2.230,type0=3Dn3xx,product0=3Dn310,=
serial0=3D316645B,claimed0=3DFalse,mgmt_addr1=3D192.168.2.230,type1=3Dn3xx,=
product1=3Dn310,serial1=3D316645B,claimed1=3DFalse,mgmt_addr2=3D192.168.2.2=
30,type2=3Dn3xx,product2=3Dn310,serial2=3D316645B,claimed2=3DFalse,type=3Dn=
3xx,mgmt_addr=3D192.168.2.230,addr1=3D192.168.10.2,addr2=3D192.168.20.2,mas=
ter_clock_rate=3D122.88e6,use_dpdk=3D1</span></i><span style=3D"font-size:1=
0.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=
=3D"EN-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><i><s=
pan style=3D"font-size:9pt;font-family:&quot;Verdana&quot;,sans-serif" lang=
=3D"EN-US">[ERROR] [RPC] Someone tried to claim this device again (From: 19=
2.168.2.254)</span></i><span style=3D"font-size:10.5pt;font-family:&quot;\0=
05fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u><=
/span></p></div><div><p class=3D"MsoNormal"><i><span style=3D"font-size:9pt=
;font-family:&quot;Verdana&quot;,sans-serif" lang=3D"EN-US">[WARNING] [MPM.=
RPCServer] Someone tried to claim this device again (From: 192.168.2.254)</=
span></i><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0=
096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></di=
v><div><p class=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&=
quot;Verdana&quot;,sans-serif" lang=3D"EN-US">Error: RuntimeError: Error du=
ring RPC call to `claim&#39;. Error message: Someone tried to claim this de=
vice again (From: 192.168.2.254)</span></i><span style=3D"font-size:10.5pt;=
font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN=
-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><i><span st=
yle=3D"font-size:9pt;font-family:&quot;Verdana&quot;,sans-serif" lang=3D"EN=
-US">root@seu73:/home/seu#=C2=A0</span></i><span style=3D"font-size:10.5pt;=
font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN=
-US"><u></u><u></u></span></p></div></div></div><div><div style=3D"margin-l=
eft:7.5pt;margin-right:7.5pt"><p class=3D"MsoNormal" style=3D"word-break:br=
eak-all"><span style=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096=
c5\009ed1&quot;,sans-serif" lang=3D"EN-US">On 11/2/2019 02:30</span><span s=
tyle=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,=
sans-serif">=EF=BC=8C<span lang=3D"EN-US"><a href=3D"mailto:sam.reiter@ettu=
s.com" target=3D"_blank"><span style=3D"color:rgb(42,131,242);text-decorati=
on:none">Sam Reiter&lt;sam.reiter@ettus.com&gt;</span></a> wrote</span>=EF=
=BC=9A<span lang=3D"EN-US"><u></u><u></u></span></span></p></div></div><blo=
ckquote id=3D"gmail-m_1619711578498826026gmail-m_588403982258394195gmail-m_=
-4323938323390205694ntes-pcmail-quote"><div><div><p class=3D"MsoNormal"><sp=
an style=3D"font-size:10.5pt;font-family:&quot;Verdana&quot;,sans-serif" la=
ng=3D"EN-US">Panny Wang,<u></u><u></u></span></p></div><div><p class=3D"Mso=
Normal"><span style=3D"font-size:10.5pt;font-family:&quot;Verdana&quot;,san=
s-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div><div><p class=
=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Verdana&qu=
ot;,sans-serif" lang=3D"EN-US">I notice that you&#39;re only specifying a s=
ingle streaming address in your call to benchmark rate, implying that you&#=
39;re only leveraging a single 10GbE link. You can specify &quot;addr0=3D&l=
t;xxx.xxx.xxx.xxx&gt;,addr1=3D&lt;xxx.xxx.xxx.xxx&gt;&quot; in your device =
args. <u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span styl=
e=3D"font-size:10.5pt;font-family:&quot;Verdana&quot;,sans-serif" lang=3D"E=
N-US"><u></u>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal"><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Verdana&quot;,sans-serif" lan=
g=3D"EN-US">Best,<br><br>Sam Reiter<br>SDR Applications Engineer<br>Ettus R=
esearch<u></u><u></u></span></p></div></div><p class=3D"MsoNormal"><span st=
yle=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot=
;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><div><div><p cl=
ass=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;\005fae=
\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">On Wed, Oct 30, 2019=
 at 3:20 AM </span><span style=3D"font-size:10.5pt;font-family:&quot;\005fa=
e\008f6f\0096c5\009ed1&quot;,sans-serif">=E7=8E=8B=E7=9B=BC<span lang=3D"EN=
-US"> via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></span=
></span></p></div><blockquote style=3D"border-color:currentcolor currentcol=
or currentcolor rgb(204,204,204);border-style:none none none solid;border-w=
idth:medium medium medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;mar=
gin-right:0cm"><div><div><div><div><p class=3D"MsoNormal"><span style=3D"fo=
nt-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-se=
rif" lang=3D"EN-US">Hello,<u></u><u></u></span></p></div><div><p class=3D"M=
soNormal"><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\=
0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0Nate.</span><span styl=
e=3D"font-family:&quot;Times New Roman&quot;,serif;color:rgb(49,53,59)" lan=
g=3D"EN-US">I want to use DPDK in UHD with N310 follow=C2=A0</span><span st=
yle=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot=
;,sans-serif" lang=3D"EN-US"><a href=3D"https://files.ettus.com/manual/page=
_dpdk.html." target=3D"_blank"><span style=3D"font-size:12pt;font-family:&q=
uot;Times New Roman&quot;,serif">https://files.ettus.com/manual/page_dpdk.h=
tml</span></a>,but the result is not=C2=A0</span><span style=3D"font-family=
:&quot;Times New Roman&quot;,serif;color:rgb(51,51,51);background:white non=
e repeat scroll 0% 0%" lang=3D"EN-US">satisfactory.I got you have some rese=
arch about this from the user-list emails(</span><i><span style=3D"font-siz=
e:9pt;font-family:&quot;Arial&quot;,sans-serif;color:black;background:white=
 none repeat scroll 0% 0%" lang=3D"EN-US">With an i7-4790k / Intel x520-DA2=
 and N310, to stream at full duplex, over two channels at 125 MS/s, the low=
est I can run my CPU clock freq at without flow control errors is 3.8 GHz u=
sing benchmark_rate and the native networking stack. Using DPDK I can run 2=
x2 @ 125 MS/s with my CPU freq locked at 1.5 GHz with no flow control error=
s.=C2=A0</span></i><span style=3D"font-family:&quot;Times New Roman&quot;,s=
erif;color:rgb(51,51,51);background:white none repeat scroll 0% 0%" lang=3D=
"EN-US">).</span><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\=
008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span>=
</p></div><div><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Time=
s New Roman&quot;,serif;color:rgb(51,51,51);background:white none repeat sc=
roll 0% 0%" lang=3D"EN-US">May be you can do me a favor and have some idea =
about my quesion.</span><span style=3D"font-size:10.5pt;font-family:&quot;\=
005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u>=
</span></p></div><div><p class=3D"MsoNormal"><span style=3D"font-family:&qu=
ot;Times New Roman&quot;,serif;color:rgb(51,51,51);background:white none re=
peat scroll 0% 0%" lang=3D"EN-US">(1) I use benchmark_rate to test the=C2=
=A0</span><span style=3D"font-size:10.5pt;font-family:&quot;Verdana&quot;,s=
ans-serif;color:rgb(49,53,59)" lang=3D"EN-US">streaming performance, I only=
 got 122.88MS/s for 1channel, or 61.44MS/s for 2x2. run with <a href=3D"mai=
lto:2x2@122.88MS" target=3D"_blank">2x2@122.88MS</a>/s , a lot of samples d=
ropped.=C2=A0</span><span style=3D"font-size:10.5pt;font-family:&quot;\005f=
ae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></sp=
an></p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Verdana&quot;,sans-serif;color:rgb(49,53,59)" lang=3D"EN-US=
">Unfortuately, my destination is <a href=3D"mailto:4x4@122.88MS" target=3D=
"_blank">4x4@122.88MS</a>/s. I don&#39;t know is it possible for my present=
=C2=A0host machine, or what configuration of host machine should have?</spa=
n><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\0=
09ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div>=
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:rgb(49,53,59)" lang=3D"EN-US">ubuntu server 18=
.04 =C2=A0 =C2=A0uhd:3.14.1.1 =C2=A0dpdk 17.11.6 =C2=A0=C2=A0dual 10GbE lin=
ks (XG image loaded)</span><span style=3D"font-size:10.5pt;font-family:&quo=
t;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u><=
/u></span></p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:10=
.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=
=3D"EN-US">host machine: 4 node, 8 cores in each node, tota 32 cores, cpu:=
=C2=A0Intel(R) Xeon(R) CPU E5-4650 0 @ 2.70GHz<u></u><u></u></span></p></di=
v><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&=
quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">more inf=
ormations about my host machine is in the attchachment.(hypethread closed, =
cpufrequtils GOVERNOR=3D&quot;perfomance&quot;)<u></u><u></u></span></p></d=
iv><div><div><p class=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-fa=
mily:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=
=C2=A0 =C2=A0--args &quot;type=3Dn3xx,mgmt_addr=3D192.168.1.104,addr=3D192.=
168.20.2,master_clock_rate=3D122.88e6,use_dpdk=3D1&quot; \</span></i><span =
style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&qu=
ot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p class=
=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quot;\005fae\00=
8f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 =C2=A0--duration=
 60 \</span></i><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\0=
08f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span><=
/p></div><div><p class=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-f=
amily:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=
=C2=A0 =C2=A0--channels &quot;0,1&quot; \</span></i><span style=3D"font-siz=
e:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" l=
ang=3D"EN-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><i=
><span style=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed=
1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 =C2=A0--rx_rate 122.88e6 \</span>=
</i><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5=
\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><di=
v><p class=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quot;=
\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 =C2=A0=
--rx_subdev &quot;A:0 A:1&quot; \</span></i><span style=3D"font-size:10.5pt=
;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"E=
N-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><i><span s=
tyle=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,=
sans-serif" lang=3D"EN-US">=C2=A0 =C2=A0--tx_rate 122.88e6 \</span></i><spa=
n style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&=
quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p cla=
ss=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quot;\005fae\=
008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 =C2=A0--tx_sub=
dev &quot;A:0 A:1&quot;=C2=A0</span></i><span style=3D"font-size:10.5pt;fon=
t-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US=
"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><i><span style=
=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans=
-serif" lang=3D"EN-US">=C2=A0 =C2=A0Benchmark rate summary:</span></i><span=
 style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&q=
uot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p clas=
s=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quot;\005fae\0=
08f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 =C2=A0 =C2=A0Nu=
m received samples: =C2=A0 =C2=A0 2744145668</span></i><span style=3D"font-=
size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif=
" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"=
><i><span style=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\00=
9ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Num dropped samples: =C2=A0 =
=C2=A0 =C2=A06030320380</span></i><span style=3D"font-size:10.5pt;font-fami=
ly:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u><=
/u><u></u></span></p></div><div><p class=3D"MsoNormal"><i><span style=3D"fo=
nt-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif=
" lang=3D"EN-US">=C2=A0 Num overruns detected: =C2=A0 =C2=A0921</span></i><=
span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009e=
d1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p =
class=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quot;\005f=
ae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Num transmi=
tted samples: =C2=A014684137560</span></i><span style=3D"font-size:10.5pt;f=
ont-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-=
US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><i><span sty=
le=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sa=
ns-serif" lang=3D"EN-US">=C2=A0 Num sequence errors (Tx): 0</span></i><span=
 style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&q=
uot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p clas=
s=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quot;\005fae\0=
08f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Num sequence er=
rors (Rx): 0</span></i><span style=3D"font-size:10.5pt;font-family:&quot;\0=
05fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u><=
/span></p></div><div><p class=3D"MsoNormal"><i><span style=3D"font-size:9pt=
;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"E=
N-US">=C2=A0 Num underruns detected: =C2=A0 67231</span></i><span style=3D"=
font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-=
serif" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNo=
rmal"><i><span style=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096=
c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Num late commands: =C2=A0=
 =C2=A0 =C2=A0 =C2=A00</span></i><span style=3D"font-size:10.5pt;font-famil=
y:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></=
u><u></u></span></p></div><div><p class=3D"MsoNormal"><i><span style=3D"fon=
t-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif"=
 lang=3D"EN-US">=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00</spa=
n></i><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096=
c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u></u></span></p></div><=
div><p class=3D"MsoNormal"><i><span style=3D"font-size:9pt;font-family:&quo=
t;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Num =
timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00</span></i><span style=3D"font-s=
ize:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif"=
 lang=3D"EN-US"><u></u><u></u></span></p></div></div><h1><span style=3D"fon=
t-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US=
"><u></u>=C2=A0<u></u></span></h1><div><p class=3D"MsoNormal"><span style=
=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,s=
ans-serif" lang=3D"EN-US">(2) In the =C2=A0txrx_loopback_to_file test ,when=
 I use the default --setting for 4*4channels, there is a error <i>UUUUError=
: Receiver error ERROR_CODE_LATE_COMMAND</i>=C2=A0.<u></u><u></u></span></p=
></div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-fam=
ily:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">I c=
hange it to=C2=A0--setting 1 ,it works.<u></u><u></u></span></p></div><div>=
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;\0=
05fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">I want to know =
the influence to my streaming or sample datas if 1 increase=C2=A0=C2=A0--se=
tting?<u></u><u></u></span></p></div><div><div><p class=3D"MsoNormal"><i><s=
pan style=3D"font-size:9pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&q=
uot;,sans-serif" lang=3D"EN-US">(--settling arg (=3D0.20000000000000001) se=
ttling time (seconds) before=C2=A0receiving)</span></i><span style=3D"font-=
size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif=
" lang=3D"EN-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"=
 style=3D"line-height:16.8pt"><span style=3D"font-size:10.5pt;font-family:&=
quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal" style=3D"line-hei=
ght:16.8pt"><span style=3D"font-size:10pt;font-family:&quot;Verdana&quot;,s=
ans-serif;color:black;background:white none repeat scroll 0% 0%" lang=3D"EN=
-US">Much appreciated.</span><span style=3D"font-size:10.5pt;font-family:&q=
uot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u><u=
></u></span></p></div></div><div><p class=3D"MsoNormal" style=3D"line-heigh=
t:16.8pt"><span style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\=
0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span><=
/p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-f=
amily:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">R=
egards,<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span sty=
le=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;=
,sans-serif" lang=3D"EN-US">Panny Wang<u></u><u></u></span></p></div><div><=
p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;\00=
5fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US">=C2=A0<u></u><u>=
</u></span></p></div><div id=3D"gmail-m_1619711578498826026gmail-m_58840398=
2258394195gmail-m_-4323938323390205694gmail-m_7026444473092057810ntes-pcmac=
-signature"><div><p class=3D"MsoNormal" style=3D"line-height:10.5pt"><span =
style=3D"font-size:10.5pt;font-family:&quot;\005fae\008f6f\0096c5\009ed1&qu=
ot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div></div><=
/div></div></div><p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;fon=
t-family:&quot;\005fae\008f6f\0096c5\009ed1&quot;,sans-serif" lang=3D"EN-US=
">_______________________________________________<br>USRP-users mailing lis=
t<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></span></p></blo=
ckquote></div></blockquote></div></div></blockquote></div></blockquote></di=
v></div></blockquote></div></div></div></blockquote></div>

--0000000000008fc52c0596dab35d--


--===============3747005118224676244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3747005118224676244==--

