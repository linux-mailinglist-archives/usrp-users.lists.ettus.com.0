Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDAF15CDB3
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2020 23:01:52 +0100 (CET)
Received: from [::1] (port=38624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2MYL-0005el-Jd; Thu, 13 Feb 2020 17:01:45 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:34498)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <hazelnutvt04@gmail.com>)
 id 1j2MYI-0005Yy-Ht
 for usrp-users@lists.ettus.com; Thu, 13 Feb 2020 17:01:42 -0500
Received: by mail-lj1-f180.google.com with SMTP id x7so8416953ljc.1
 for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2020 14:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=K2nCvr9OiTiZzo/xBHNdy8T9J5ZYGLj30Kc1hhjv8lQ=;
 b=kk+LtiUzJbhMMuVN0wjbgDk5YA2/F5T9CY+pLkjbs1nXbOXTa8ur6GY/nTH/mDCjvK
 gNlcYh+SW6oun1pvuj5zboap2bL0+XiQ22i2Vdd+Nz8BzCIMpaMNZkLP5322kD/V3LsS
 axHDUvl1AEb7biV/n3QhBtvpW8IENoFgK3v13gfnhf3j7SxyaZtdU3Ykihoh6jyfO+M3
 Ndczp21RstExgCnf6NY45tLw6OzyHz2xGd9kWgXFemEUeBLPYR+2Y4NdRY8hsGNvdWit
 Vq8B50VlSXQ7O7E4k5yWBk9bPFV2yr6jTauS0EjOUeafmzRGr4hG7Oip+gzm8z35JEcK
 M2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=K2nCvr9OiTiZzo/xBHNdy8T9J5ZYGLj30Kc1hhjv8lQ=;
 b=XWtItFY4+cXkObT8GlEU/vvC0XkylrLVc9Feus1ipOTcQpIrpIuzQZ+jI/YQC9Vo85
 Tirg2B1btuHFpNgKtdREQ0lUx9NmOWJuxfM7n0GKv35IxKN90ljWs4EHY9l0Vix/IYB0
 OsDLpel6aoXpNd3+L/vei5bWiIx/UoH/CzuNhJ+ngr5vPHLcY9JaQPSJjw9R+lo7flnS
 48dJTx2SGw0ZoWsEt6k6JdzNgiK3/8kW4PrnaMnfWPavqvfM1OjAOAfqbUJFhzmpWjAS
 eyLn9rTMKR6Z9SbzhylHAF762EGyFLY6shxKWNIPNJSGAGu1aDNhO9nRdoDWR3vAcffc
 L4+w==
X-Gm-Message-State: APjAAAV7o9On4LgKxYZvFQaaTeWoy/XX+YLnm3wwNw97LNp8ot3JXnMn
 oE5XI8HnRPvg+wNqv8Gru1RMsKLFf27TKjp1s5bvbhEd
X-Google-Smtp-Source: APXvYqwhQkpPUmS9XRRJ+LB0LK7a3TVGM4/3r8v9IexAKz5fBqYqTgQCCNRvM2WBg/48HzQjKaEyzX96vBrS9w50rhI=
X-Received: by 2002:a2e:8e70:: with SMTP id t16mr12470706ljk.73.1581631260615; 
 Thu, 13 Feb 2020 14:01:00 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 13 Feb 2020 17:00:49 -0500
Message-ID: <CABD0DOtHt4p2w3x0xfKNTcFb0q8K3LsgYczx71bfDKR7mM-d+g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Confusing Errors after Tweaking
 recv_frame_size/num_recv_frames
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Glenn Hazelwood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Glenn Hazelwood <hazelnutvt04@gmail.com>
Content-Type: multipart/mixed; boundary="===============5032813987230104849=="
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

--===============5032813987230104849==
Content-Type: multipart/alternative; boundary="000000000000746b64059e7c39a8"

--000000000000746b64059e7c39a8
Content-Type: text/plain; charset="UTF-8"

Background
--------------------------
I am using a B205mini connected to a Jetson Xavier AGX (8 Nvidia Carmel CPU
cores) with 16GB RAM and set to the max power profile (2.26GHz CPU) via USB
3.0. The Jetson is running Ubuntu 18.04.2 LTS (GNU/Linux 4.9.140-tegra
aarch64). I am using 'GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.0-124-geb448043'

My sample rate is 24Msps. Eventually I want to try to use the GPU to
process samples.
I had one pthread for receiving the samples and another pthread for
processing the samples. I used a std::queue with mutexes to send samples
between the threads. But I was getting overflow errors. I commented out my
sample processing and just focused on the one thread getting the samples
(rx_stream->recv() in a while loop) without overflowing. I should also add
that I am incrementing the rx freq by 24 MHz and changing the tuning
frequency (usrp->set_rx_freq()) every 16 packets. (I believe that this freq
changing is blocking the recv() from being called often enough to make sure
that my app keeps up with samples the USRP is trying to give it)

Errors From recv_frame_size/num_recv_frame Settings?
------------------------------------------------------------------
I was hoping to buy myself some leeway with the delay involved in changing
the RX freq? I have seen various responses on this mailing list and in the
USRP documentation about
setting the recv_frame_size and num_recv_frames so that the USB is able to
use a larger buffer. get_max_num_samps() returns 2040 for me. My cpu_format
is fc32 and my otw_format is sc12.

I tried recv_frame_size=16320, num_recv_frames=512
and still got the 'ERROR_CODE_OVERFLOW'

Then I tried recv_frame_size=16320, num_recv_frames=1024 ("Case 1")
and immediately got this error:
terminate called after throwing an instance of
'boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<boost::lock_error>
>'
  what():  boost: mutex lock failed in pthread_mutex_lock: Invalid argument
Aborted

Then I tried num_recv_frames=1024 ("Case 2")
and immediately got this error:
terminate called after throwing an instance of 'uhd::io_error'
  what():  EnvironmentError: IOError: usb rx6 transfer status:
LIBUSB_TRANSFER_ERROR
Aborted

"The Point"
----------------------------
I don't understand why setting the recv_frame_size to 16320 appears to
cause causes a 'failed mutex lock', but leaving it out causes a USB
transfer error.

Glenn Hazelwood
-- 
Diftor heh smusma
-Famous Vulcan Phrase ;)

--000000000000746b64059e7c39a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div>Background</div><div>----------------------=
----</div>I am using a B205mini connected to a Jetson Xavier AGX (8 Nvidia =
Carmel CPU cores) with 16GB RAM and set to the max power profile (2.26GHz C=
PU) via USB 3.0. The Jetson is running Ubuntu 18.04.2 LTS (GNU/Linux 4.9.14=
0-tegra aarch64). I am using &#39;GNU C++ version 7.4.0; Boost_106501; UHD_=
3.15.0.0-124-geb448043&#39;<div><br></div><div>My sample rate is 24Msps. Ev=
entually I want to try to use the GPU to process samples.=C2=A0<div>I had o=
ne pthread for receiving the samples and another pthread for processing the=
 samples. I used a=C2=A0std::queue with mutexes to send samples between the=
 threads. But I was getting overflow errors. I commented out my sample proc=
essing and just focused on the one thread getting the samples (rx_stream-&g=
t;recv() in a while loop) without overflowing. I should also add that I am =
incrementing the rx freq by 24 MHz and changing the tuning frequency (usrp-=
&gt;set_rx_freq()) every 16 packets. (I believe that this freq changing is =
blocking the recv() from being called often enough to make sure that my app=
 keeps up with samples the USRP is trying to give it)<br></div><div><div><b=
r></div><div>Errors From recv_frame_size/num_recv_frame Settings?</div><div=
>------------------------------------------------------------------</div><d=
iv>I was hoping to buy myself some leeway with the delay involved in changi=
ng the RX freq? I have seen various responses on this mailing list and in t=
he USRP documentation about<br clear=3D"all"><div>setting the recv_frame_si=
ze and num_recv_frames so that the USB is able to use a larger buffer. get_=
max_num_samps() returns 2040 for me. My cpu_format is fc32 and my otw_forma=
t is sc12.=C2=A0</div><div><br></div><div>I tried recv_frame_size=3D16320, =
num_recv_frames=3D512<br></div><div>and still got the &#39;ERROR_CODE_OVERF=
LOW&#39;</div><div><br></div><div>Then I tried recv_frame_size=3D16320, num=
_recv_frames=3D1024 (&quot;Case 1&quot;)</div><div>and immediately got this=
 error:</div><div>terminate called after throwing an instance of &#39;boost=
::exception_detail::clone_impl&lt;boost::exception_detail::error_info_injec=
tor&lt;boost::lock_error&gt; &gt;&#39;<br>=C2=A0 what(): =C2=A0boost: mutex=
 lock failed in pthread_mutex_lock: Invalid argument</div><div><div>Aborted=
</div></div><div><br></div><div>Then I tried=C2=A0num_recv_frames=3D1024 (&=
quot;Case 2&quot;)</div><div>and immediately got this error:</div><div>term=
inate called after throwing an instance of &#39;uhd::io_error&#39;<br>=C2=
=A0 what(): =C2=A0EnvironmentError: IOError: usb rx6 transfer status: LIBUS=
B_TRANSFER_ERROR<br>Aborted<br></div><div><br></div><div>&quot;The Point&qu=
ot;</div><div>----------------------------</div><div>I don&#39;t understand=
 why setting the recv_frame_size to 16320 appears to cause causes a &#39;fa=
iled mutex lock&#39;,=C2=A0but leaving it out causes a USB transfer error.<=
/div><div><br></div><div>Glenn Hazelwood<br></div>-- <br><div dir=3D"ltr" c=
lass=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=
=3D"line-height:19.0469px;background-color:rgb(255,255,255)"><font color=3D=
"#000000" face=3D"trebuchet ms, sans-serif">Diftor heh smusma<br></font></s=
pan></div><div><span style=3D"line-height:19.0469px;background-color:rgb(25=
5,255,255)"><font color=3D"#000000" face=3D"trebuchet ms, sans-serif">-Famo=
us Vulcan Phrase ;)<br></font></span></div></div></div></div></div></div></=
div></div></div></div></div></div></div>

--000000000000746b64059e7c39a8--


--===============5032813987230104849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5032813987230104849==--

