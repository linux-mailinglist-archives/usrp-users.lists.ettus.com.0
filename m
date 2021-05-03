Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B08C4372150
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 22:33:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18456384035
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 16:33:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="K2ZIVeZP";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C89F383FF8
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 16:32:09 -0400 (EDT)
Received: by mail-yb1-f173.google.com with SMTP id 82so9250713yby.7
        for <usrp-users@lists.ettus.com>; Mon, 03 May 2021 13:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9wlGVuILlaPl6Ve8FPOar8gVmnqjIj1l85KLA7uMoaw=;
        b=K2ZIVeZPawgE3GLvOh7L9YKsf56r/HRTm0/UUALGZV8sUCBXnaaHrqvr6rXxs0pslS
         qrkqZ7lHaZSYCIakWU79omjaLcV8QHGKxoT2rYMmOLBe6l4yGFcRt5Jt+2ZUzlbnU6C7
         Wey1rKcdSUHufEkXD/QrUV2kpOZ6cVmFEaBaD1GiSbXqAKlF2KMXRI6JxuUa+0n/SBSZ
         XwykBB+bk4e8rqKP9hIKjCw5v4PCN5DsugQf7OmoAElLBMlFDZSUq6I7wSbBNZgFICUi
         QIYs/SgSblN6jOaojIjN5b82Sjce5AKXF9wT1jfR6Q1VSrVkoW4fu+cGmAwT6Hibc/X4
         xj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9wlGVuILlaPl6Ve8FPOar8gVmnqjIj1l85KLA7uMoaw=;
        b=gpIGZBgZ3NQClDyDcmNKXj5K7ApCaGHz+mHSGHXQWlpCl6hTl7KXxCg6h0pvVIHxTD
         qXM2YrxKPjRuNyGfjGHMpydRgdjlxmiTJa3hKTTr+4Pxcn+kSj4CmnIf/WN5/J3fu8a1
         fmlr0NxZptpM6JgL9Ly3QzQbe1T+mLsrfSZBHipD9yd6mZlxioHZf7HhOP+0aW49Bwwj
         622VCfgGuOIZh4dWk2CizHwPsd/Z4MkOI53JjmcFePHksMUl5ZGELjAFyzlpU3k96lbL
         qYybHDyBuyUHoUVs7jP+5MzOSkZqqTRcbweityUm0iomez+626O093JRj8GXQCnzmsm3
         Vsjg==
X-Gm-Message-State: AOAM533Rn0VoqTdk/DsYjyKB4DEiTtpV9ohNY/dM8d+HkhYCqOJzzpcl
	nH+TpEO+9jJmNxT6dZqVF8nKkyYghHRrCxnIw0y8weDuAsc=
X-Google-Smtp-Source: ABdhPJzhnPlhP5w6rEivjVe9kMjosPU8Dvy3u1YDZiGti3U4oUO19Ar/5HpDvtW5NmeOuygb+feIs2q3yriqGRc/OOA=
X-Received: by 2002:a25:84c5:: with SMTP id x5mr28079204ybm.383.1620073928968;
 Mon, 03 May 2021 13:32:08 -0700 (PDT)
MIME-Version: 1.0
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Mon, 3 May 2021 16:31:58 -0400
Message-ID: <CAL0m=NZ6_qKogN9yeuizj_Sq58266n7k=DMxmyiJo-eW_yiJ6A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IYQSZLI567PG3PRLSXD6U724OFYVOJAF
X-Message-ID-Hash: IYQSZLI567PG3PRLSXD6U724OFYVOJAF
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GNU Radio cannot find N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYQSZLI567PG3PRLSXD6U724OFYVOJAF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0977616811345278551=="

--===============0977616811345278551==
Content-Type: multipart/alternative; boundary="0000000000000bcd2805c172dbe8"

--0000000000000bcd2805c172dbe8
Content-Type: text/plain; charset="UTF-8"

Hello,

I was trying to receive the signal from UHD Sink (n310) in GNU Radio
Companion (GRC) but got the following error message (i.e., GRC cannot find
N310). I am using Ubuntu 18.04, GNU RADIO 3.9, and UHD 4.0.0. I have
confirmed that
- My GRC can work with N210.
- I can ping both eth0 and SPF+ ports of N310 from host.
- In terminal "uhd_find_devices" can find N310.
- "uhd_usrp_probe" can also find N310. Output message is attached below.
- I can log in N310 using SSH.
- I have updated N310's FPGA image. The OS in N310 is also UHD 4.0.0 (the
same as the host).

Any suggestions would be appreciated.
Thanks,
Hua


================================
ERROR MESSAGE FROM GRC
================================
Traceback (most recent call last):
  File "/home/cnss/test2.py", line 150, in <module>
    main()
  File "/home/cnss/test2.py", line 126, in main
    tb = top_block_cls()
  File "/home/cnss/test2.py", line 84, in __init__
    channels=list(range(0,1)),
  File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 125,
in constructor_interceptor
    return old_constructor(*args)
  File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line
3259, in make
    return _uhd_swig.usrp_source_make(device_addr, stream_args,
issue_stream_cmd_on_start)
RuntimeError: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.20.2



================================
OUTPUT OF "uhd_usrp_probe"
================================
uhd_usrp_probe "addr=192.168.20.2"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.HEAD-0-g90ce6062
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.20.2,type=n3xx,product=n310,serial=31F54AE,claimed=False,addr=192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=192.168.20.2,product=n310,clock_source=internal,time_source=internal'.
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 25000000 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=25000000
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /

--0000000000000bcd2805c172dbe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>I was trying to receive th=
e signal from UHD Sink (n310) in GNU Radio Companion (GRC) but got the foll=
owing error message (i.e., GRC cannot find N310). I am using Ubuntu 18.04, =
GNU RADIO 3.9, and UHD 4.0.0. I have confirmed that=C2=A0</div><div>- My GR=
C can work with N210.</div><div>- I can ping both eth0 and SPF+ ports of N3=
10 from host.=C2=A0</div><div>- In terminal &quot;uhd_find_devices&quot; ca=
n find N310.=C2=A0</div><div>- &quot;uhd_usrp_probe&quot; can also find N31=
0. Output message is attached below.=C2=A0</div><div>- I can log in N310 us=
ing SSH.=C2=A0</div><div>- I have updated N310&#39;s FPGA image. The OS in =
N310 is also UHD 4.0.0 (the same as the host).=C2=A0</div><div><br></div><d=
iv>Any suggestions would be appreciated.</div><div>Thanks,</div><div>Hua</d=
iv><div><br></div><div><br></div><div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><di=
v></div></div><div>ERROR MESSAGE FROM GRC</div><div>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</div><div>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/cn=
ss/test2.py&quot;, line 150, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=
=C2=A0 File &quot;/home/cnss/test2.py&quot;, line 126, in main<br>=C2=A0 =
=C2=A0 tb =3D top_block_cls()<br>=C2=A0 File &quot;/home/cnss/test2.py&quot=
;, line 84, in __init__<br>=C2=A0 =C2=A0 channels=3Dlist(range(0,1)),<br>=
=C2=A0 File &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py&q=
uot;, line 125, in constructor_interceptor<br>=C2=A0 =C2=A0 return old_cons=
tructor(*args)<br>=C2=A0 File &quot;/usr/lib/python3/dist-packages/gnuradio=
/uhd/uhd_swig.py&quot;, line 3259, in make<br>=C2=A0 =C2=A0 return _uhd_swi=
g.usrp_source_make(device_addr, stream_args, issue_stream_cmd_on_start)<br>=
RuntimeError: LookupError: KeyError: No devices found for -----&gt;<br>Devi=
ce Address:<br>=C2=A0 =C2=A0 addr: 192.168.20.2<br></div><div><br></div><di=
v><br></div><div><br></div><div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div></di=
v></div><div>OUTPUT OF &quot;uhd_usrp_probe&quot;</div><div>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=C2=A0</div><div>uhd_usrp_probe &quot;addr=3D192.168.20.2&quot;<br>[I=
NFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.HEAD-0-g90=
ce6062<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgm=
t_addr=3D192.168.20.2,type=3Dn3xx,product=3Dn310,serial=3D31F54AE,claimed=
=3DFalse,addr=3D192.168.20.2<br>[INFO] [MPM.PeriphManager] init() called wi=
th device args `mgmt_addr=3D192.168.20.2,product=3Dn310,clock_source=3Dinte=
rnal,time_source=3Dinternal&#39;.<br>[WARNING] [UDP] The send buffer could =
not be resized sufficiently.<br>Target sock buff size: 25000000 bytes.<br>A=
ctual sock buff size: 1048576 bytes.<br>See the transport application notes=
 on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2500=
0000<br>=C2=A0 _____________________________________________________<br>=C2=
=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device<br>| =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 =C2=
=A0/<br></div><div><br></div><div>=C2=A0=C2=A0<br></div></div>

--0000000000000bcd2805c172dbe8--

--===============0977616811345278551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0977616811345278551==--
