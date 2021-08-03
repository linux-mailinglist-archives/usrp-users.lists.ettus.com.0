Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E62623DF14A
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 17:23:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B7493849ED
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 11:23:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b0lodbN8";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id AF075383BC3
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 11:22:30 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id h10so14175387qth.5
        for <usrp-users@lists.ettus.com>; Tue, 03 Aug 2021 08:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CjB8D9uwEliprlr1yalWfp4w2ELpWCexCorzyO1hhug=;
        b=b0lodbN8wj8bMHVd3nBtZjK8BecI5DEL/9V641+T87JGPMtjnckSKOKhUzqljAngmw
         YOd2Cmm+zLgm0OrbQMMsrlH5SqJbsQ7uXFb4UJ+zevkwmAxiL0TzHd4Ecfj67hOPMXNt
         wDtOoOox4ujwL7EoWuTYRInm08NbojCVN/401xWAB7+nx5EVjlELBCOlnyTxJKCEfBtF
         WNCDJeLQKCfXAoxPyLWCZSBqrrjL26ScPf2wBjNg2OemnKdr8s9uoBKgyRgDUkpHulNY
         Pgb0VQqdcEpL+4vPFyVB/FZBo45YJCS0Tom/2/atwmq4XsnWgHQ9E0WGwsWODPw1Fdpm
         jb9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CjB8D9uwEliprlr1yalWfp4w2ELpWCexCorzyO1hhug=;
        b=HPa2xVay1G1aS+bVAWn21/nFGl7u+Fp4qNh3ouoSrfz6rWfTj2GrZGics79whE2dPq
         Q9K1MCYEFyfd2XqyrV85x2VKfD0PsRN6ZzhFkphgbyj32S3E//rhBmwcAgUywD/aR0tL
         1PlCIkeNfNd8Y1O7pUWo18klFry4RJzR3q36flSAb9DaTpfWA0BwtHpSw7m5YPZE9HI9
         p3eZ2+1vnrEGeZDaX/YDro+QTGAuXTggq4HCdUw/e2R77EkKduTEoepg5+vyolnsuffP
         dxu2S4Z5q7WqkIM7l2I4jscx0xT2NHO7/mMI0vb++zZqqdsqgs1hffiYffjgjUzVknDn
         PBtg==
X-Gm-Message-State: AOAM532fPXJyLzA6Syo1F83rkzGrBbjAAGpR6ddotgivUuyFFkO2Hy+8
	Ehhx0rKfVvIhDMlUKSQf2QCYzv+pGxjQb65Rv8iFwStoNso=
X-Google-Smtp-Source: ABdhPJwQsfUy4Kq2JEP9ccNpv8lBUBBv/M/HXact9P2toA/QNelWwe6iTJ+LQSUHJk4XcQYyChdMx5mjR1DIFhVzu5E=
X-Received: by 2002:ac8:6759:: with SMTP id n25mr18850686qtp.49.1628004149841;
 Tue, 03 Aug 2021 08:22:29 -0700 (PDT)
MIME-Version: 1.0
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Tue, 3 Aug 2021 11:22:18 -0400
Message-ID: <CACwKM9J-rELH0kCA7yt6DzbvZ-PtBKwD12yyJwTAnWJqvXi7YQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LMS2Y6OEHK7QUEVEQVW23V5MGNMSINRU
X-Message-ID-Hash: LMS2Y6OEHK7QUEVEQVW23V5MGNMSINRU
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD4.0/GR-Ettus/Custom SigGen block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMS2Y6OEHK7QUEVEQVW23V5MGNMSINRU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7858233609682090528=="

--===============7858233609682090528==
Content-Type: multipart/alternative; boundary="0000000000000b50ce05c8a9419c"

--0000000000000b50ce05c8a9419c
Content-Type: text/plain; charset="UTF-8"

I could really use some help guys.

i'm using an X310
i've added the siggen block to my HA FPGA image.
I've added the 'Loopback Patch' to gr-ettus which exposes skip property
propagation (but it's currently set to False as is default)
I made a custom gnuradio block using rfnocmodtool  that accesses the UHD
siggen control API and controls the following properties:
enable
waveform type
amplitude
constant I
constant Q
sine phase increment

uhd_usrp_probe shows the siggen block
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DDC#2
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/NullSrcSink#0
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/SigGen#0
|   |   * 0/SplitStream#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/Radio#0:0==>0/SEP#0:0
|   |   * 0/SEP#0:0==>0/Radio#0:0
|   |   * 0/Radio#1:0==>0/SEP#1:0
|   |   * 0/SEP#1:0==>0/Radio#1:0
|   |   * 0/SEP#2:0==>0/DDC#0:0
|   |   * 0/DDC#0:0==>0/SEP#2:0
|   |   * 0/SEP#3:0==>0/DDC#1:0
|   |   * 0/DDC#1:0==>0/SEP#3:0
|   |   * 0/SEP#4:0==>0/DDC#2:0
|   |   * 0/DDC#2:0==>0/SEP#4:0
|   |   * 0/SEP#5:0==>0/SplitStream#0:0
|   |   * 0/SplitStream#0:0==>0/SEP#6:0
|   |   * 0/SplitStream#0:1==>0/SEP#7:0
|   |   * 0/SEP#8:0==>0/DUC#0:0
|   |   * 0/DUC#0:0==>0/SEP#8:0
|   |   * 0/SEP#9:0==>0/DUC#1:0
|   |   * 0/DUC#1:0==>0/SEP#9:0
|   |   * 0/SEP#10:0==>0/NullSrcSink#0:0
|   |   * 0/NullSrcSink#0:0==>0/SEP#10:0
|   |   * 0/SEP#11:0==>0/NullSrcSink#0:1
|   |   * 0/NullSrcSink#0:1==>0/SEP#11:0
|   |   * 0/SEP#12:0==>0/SigGen#0:0
|   |   * 0/SigGen#0:0==>0/SEP#12:0
|


I've followed Aaron Rosetto's RFNoC Python API guide from GRCON last year
and confirmed that siggen can be accessed via UHD and can stream samples to
the host.

the gnuradio part is where it's getting messy

when i connect:
RX RADIO -> DDC -> RX STREAMER -> QT GUI TIME SINK
everything works as expected in GNURadio

when i replace the radio with the siggen and connect
SIGGEN -> DDC -> RX STREAMER -> QT GUI TIME SINK
i get the following error
  File "/home/user/flowgraphs/siggen_stream_to_host.py", line 258, in
<module>
    main()
  File "/home/user/flowgraphs/siggen_stream_to_host.py", line 234, in main
    tb = top_block_cls()
  File "/home/user/flowgraphs/siggen_stream_to_host.py", line 184, in
__init__
    self.rfnoc_graph.connect(self.nocextend_siggen_0.get_unique_id(), 0,
self.ettus_rfnoc_ddc_0.get_unique_id(), 0,
self.rfnoc_graph.skip_propagation)
  File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line
2384, in connect
    return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)
RuntimeError: EnvironmentError: IOError: Timed out getting recv buff for
management transaction
Exception ignored in: <built-in function delete_time_sink_c_sptr>
SystemError: <built-in function delete_time_sink_c_sptr> returned a result
with an error set


Again, i could really use some help
thanks

--0000000000000b50ce05c8a9419c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I could really use some help guys.<br><br></div><div>=
i&#39;m using an X310<br>i&#39;ve added the siggen block to my HA FPGA imag=
e.<br>I&#39;ve added the &#39;Loopback Patch&#39; to gr-ettus which exposes=
 skip property propagation (but it&#39;s currently set to False as is defau=
lt)<br>I made a custom gnuradio block using rfnocmodtool=C2=A0 that accesse=
s the UHD siggen control API and controls the following properties:<br></di=
v><div>enable<br></div><div>waveform type<br></div><div>amplitude<br></div>=
<div>constant I<br></div><div>constant Q<br></div><div>sine phase increment=
<br><br></div><div>uhd_usrp_probe shows the siggen block<br>| =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<br>| =C2=A0 | =C2=A0 <br>| =
=C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=
=A0 * 0/DDC#2<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DUC#1=
<br>| =C2=A0 | =C2=A0 * 0/NullSrcSink#0<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br=
>| =C2=A0 | =C2=A0 * 0/Radio#1<br>| =C2=A0 | =C2=A0 * 0/SigGen#0<br>| =C2=
=A0 | =C2=A0 * 0/SplitStream#0<br>| =C2=A0 =C2=A0 _________________________=
____________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 Static connections on this device:<br>| =C2=A0 | =C2=A0 <br>| =
=C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/S=
EP#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/S=
EP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =
=C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=
=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0/DDC#1:0<br>| =
=C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP=
#4:0=3D=3D&gt;0/DDC#2:0<br>| =C2=A0 | =C2=A0 * 0/DDC#2:0=3D=3D&gt;0/SEP#4:0=
<br>| =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/SplitStream#0:0<br>| =C2=A0 | =
=C2=A0 * 0/SplitStream#0:0=3D=3D&gt;0/SEP#6:0<br>| =C2=A0 | =C2=A0 * 0/Spli=
tStream#0:1=3D=3D&gt;0/SEP#7:0<br>| =C2=A0 | =C2=A0 * 0/SEP#8:0=3D=3D&gt;0/=
DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/SEP#8:0<br>| =C2=A0 | =
=C2=A0 * 0/SEP#9:0=3D=3D&gt;0/DUC#1:0<br>| =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=
=3D&gt;0/SEP#9:0<br>| =C2=A0 | =C2=A0 * 0/SEP#10:0=3D=3D&gt;0/NullSrcSink#0=
:0<br>| =C2=A0 | =C2=A0 * 0/NullSrcSink#0:0=3D=3D&gt;0/SEP#10:0<br>| =C2=A0=
 | =C2=A0 * 0/SEP#11:0=3D=3D&gt;0/NullSrcSink#0:1<br>| =C2=A0 | =C2=A0 * 0/=
NullSrcSink#0:1=3D=3D&gt;0/SEP#11:0<br>| =C2=A0 | =C2=A0 * 0/SEP#12:0=3D=3D=
&gt;0/SigGen#0:0<br>| =C2=A0 | =C2=A0 * 0/SigGen#0:0=3D=3D&gt;0/SEP#12:0<br=
>|<br><br><br>I&#39;ve followed Aaron Rosetto&#39;s RFNoC Python API guide =
from GRCON last year and confirmed that siggen can be accessed via UHD and =
can stream samples to the host. <br></div><div><br></div><div>the gnuradio =
part is where it&#39;s getting messy<br></div><div><br>when i connect:<br>R=
X RADIO -&gt; DDC -&gt; RX STREAMER -&gt; QT GUI TIME SINK<br>everything wo=
rks as expected in GNURadio<br><br></div>when i replace the radio with the =
siggen and connect<br><div>SIGGEN -&gt; DDC -&gt; RX STREAMER -&gt; QT GUI =
TIME SINK<br></div><div>i get the following error<br>=C2=A0 File &quot;/hom=
e/user/flowgraphs/siggen_stream_to_host.py&quot;, line 258, in &lt;module&g=
t;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/user/flowgraphs/sigge=
n_stream_to_host.py&quot;, line 234, in main<br>=C2=A0 =C2=A0 tb =3D top_bl=
ock_cls()<br>=C2=A0 File &quot;/home/user/flowgraphs/siggen_stream_to_host.=
py&quot;, line 184, in __init__<br>=C2=A0 =C2=A0 self.rfnoc_graph.connect(s=
elf.nocextend_siggen_0.get_unique_id(), 0, self.ettus_rfnoc_ddc_0.get_uniqu=
e_id(), 0, self.rfnoc_graph.skip_propagation)<br>=C2=A0 File &quot;/usr/loc=
al/lib/python3/dist-packages/ettus/ettus_swig.py&quot;, line 2384, in conne=
ct<br>=C2=A0 =C2=A0 return _ettus_swig.rfnoc_graph_sptr_connect(self, *args=
)<br>RuntimeError: EnvironmentError: IOError: Timed out getting recv buff f=
or management transaction<br>Exception ignored in: &lt;built-in function de=
lete_time_sink_c_sptr&gt;<br>SystemError: &lt;built-in function delete_time=
_sink_c_sptr&gt; returned a result with an error set</div><div><br><br></di=
v><div>Again, i could really use some help</div><div>thanks<br></div></div>

--0000000000000b50ce05c8a9419c--

--===============7858233609682090528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7858233609682090528==--
