Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCB0FDA4D
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2019 11:02:41 +0100 (CET)
Received: from [::1] (port=37360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iVYR5-0003yu-8E; Fri, 15 Nov 2019 05:02:39 -0500
Received: from mail-wr1-f41.google.com ([209.85.221.41]:46768)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <julian.ilinca.fgi@gmail.com>)
 id 1iVYR1-0003tm-TL
 for usrp-users@lists.ettus.com; Fri, 15 Nov 2019 05:02:35 -0500
Received: by mail-wr1-f41.google.com with SMTP id b3so10260719wrs.13
 for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2019 02:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=A9VDq/FM7EMzKHF80sFZSl3i0Pqbpt0g6zyaYzJReto=;
 b=bTfFIzwm2B1JRBPCzqxw7iS8juTTbR5MD4G7+fmywM8DUFMhLcuWTIsyHiu3F8CB+q
 xpVOSUI+FY/E7CfLdUGinf+XSdiDyXj/fOAP2djoS0NMOIHzdRDol2i3VXrh2//sOXfk
 AVEakkTuAUM8P15WmPktIW0mZecpByTmPUaqx5PyZr7nZIZtxwp5OgWl8GxZbVCxagk9
 W8cvW04R8yaHSknV7r4A0FR0Oxbwbrwa7QwRIXpPV0utV7g//8AJjkkJh9RJajyYZlXu
 FVUcKbd4em0s352Vkr+BsGvUuqwKe0wAnS7b3jupNHq/NevCJH6F1OdZQJDB1NUYczP2
 N3bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=A9VDq/FM7EMzKHF80sFZSl3i0Pqbpt0g6zyaYzJReto=;
 b=c9zFvvXB6JGKid8Wagkoaeah5n4HTfaBsDaaKnox0Tzm/I29lnsS8bMS4zHcnRAW7x
 bo09CqfwaF5H3G6zcWLsqLaV3+LpS+sbEtdcWP0yER46yg2g5QRpLPRJwyTx7BEuy8MS
 nYLQJ4PzzhY7HSyxNJaGKVoh0VBOwPIVa3cB3nSbh9Ol0I+tZqInBCIXZPm1juerL2hK
 E+4S3ghF5Hu38vqR00tymunkuCWDfuYd1qAt4DPhwB90L9XlU/L/DrFsOYw9vzezir2k
 NzN+qI6ZFd+ZVLDCGmVKXOVvtmJxZaTN08ut1HmaU1jRq/eOZmJxZd2xsWcczP8acvq0
 9tTg==
X-Gm-Message-State: APjAAAVdLsPv3Z0QbHsqK5Kc6k/wkthXx3vQyilUqvpVI93Z6TxtGcOS
 sU1wyzN2MgN8PQko787T1LKYSqClLJT+SoIKTPC1ef8t
X-Google-Smtp-Source: APXvYqxY9GcZcD9NnqFYP2rD7E4Hmli8rlQN5lk9YZTlhYbWaGUxa2QgvTpTAM/UvZKEmAHo41geAxV7ptIjr67Bk2E=
X-Received: by 2002:adf:ed8d:: with SMTP id c13mr1697247wro.308.1573812114559; 
 Fri, 15 Nov 2019 02:01:54 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 15 Nov 2019 12:02:15 +0200
Message-ID: <CAB1PH1670j0ryMEPsRRAPUrhO63sqQ=uJ5jEA+zBaGkZKgfQ5w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Configuring RX connection type on N210/TVRX2
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
From: Julian Ilinca via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Julian Ilinca <julian.ilinca.fgi@gmail.com>
Content-Type: multipart/mixed; boundary="===============5371677218792460941=="
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

--===============5371677218792460941==
Content-Type: multipart/alternative; boundary="0000000000000816ed05975fb000"

--0000000000000816ed05975fb000
Content-Type: text/plain; charset="UTF-8"

Hello all,

I have two questions concerning the RX channel configuration on an TVRX2
daughter-board. I cannot seem to find any relevant information in the
example files or on the Internet. But first things first, the TVRX2 is
connected to a N210 motherboard and I am using the UHD C++ API for
configuring the device. Furthermore, I am trying to measure the real (I)
component of a VHF signal on both of the channels (RX1 and RX2)
simultaneously.

1. The first question is related to IQ sampling:
The daughter-board is set so that one channel retrieves the I component and
the other channel the Q. I retrieved this information with the
uhd_usrp_probe command. In the output under RX0 its says connection type =
Q and on RX1 connection type = I. What command do I have to use to change
connection type of RX0 from Q to I, so that I could have two channels
measuring the real component.

2. I'm a confused about the channel mapping convention used when using the
TVRX2. In order torecord from two channels I have set the subdev_spec to
"A:RX1 A:RX2", and it works fine. However, when I use the
"get_rx_num_channels()" function its return value is 1 instead of 2.
In the manual entry for the function it says:

"This is the number of USRPs times the number of RX channels per board,
where the number of RX channels per board is homogeneous among all USRPs."

To get streaming arguments correctly I have to use a vector where I map the
channel number s1 and 2 manually:

>>std::vector<size_t> channel_nums;
>>...
>> channel_nums.push_back(0);
>> channel_nums.push_back(1);
>>...
>>stream_args.channels = channel_nums;
>>uhd::rx_streamer::sptr rx_stream = usrp->get_rx_stream(stream_args);

Now, how does the device recognize 2 channels after the get_rx_stream()
function has been called, as it earlier on told me there is only one
channel, and how can I specifically configure the properties of channel 1?

Thanks already in advance for your support!

Br. Julian

--0000000000000816ed05975fb000
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<br><br>I have two questions concerning the RX c=
hannel configuration on an TVRX2 daughter-board. I cannot seem to find any =
relevant information in the example files or on the Internet. But first thi=
ngs first, the TVRX2 is connected to a N210 motherboard and I am using the =
UHD C++ API for configuring the device. Furthermore, I am trying to measure=
 the real (I) component of a VHF signal on both of the channels (RX1 and RX=
2) simultaneously.<br><br>1. The first question is related to IQ sampling:<=
br>The daughter-board is set so that one channel retrieves the I component =
and the other channel the Q. I retrieved this information with the uhd_usrp=
_probe command. In the output under RX0 its says connection type =3D Q and =
on RX1 connection type =3D I. What command do I have to use to change conne=
ction type of RX0 from Q to I, so that I could have two channels measuring =
the real component.<br><br>2. I&#39;m a confused about the channel mapping =
convention used when using the TVRX2. In order torecord from two channels I=
 have set the subdev_spec to &quot;A:RX1 A:RX2&quot;, and it works fine. Ho=
wever, when I use the &quot;get_rx_num_channels()&quot; function its return=
 value is 1 instead of 2.<br>In the manual entry for the function it says:<=
br><br>&quot;This is the number of USRPs times the number of RX channels pe=
r board, where the number of RX channels per board is homogeneous among all=
 USRPs.&quot;<br><br>To get streaming arguments correctly I have to use a v=
ector where I map the channel number s1 and 2 manually:<br><br>&gt;&gt;std:=
:vector&lt;size_t&gt; channel_nums;<br>&gt;&gt;...<br>&gt;&gt; channel_nums=
.push_back(0);<br>&gt;&gt; channel_nums.push_back(1);<br>&gt;&gt;...<br>&gt=
;&gt;stream_args.channels =3D channel_nums;<br>&gt;&gt;uhd::rx_streamer::sp=
tr rx_stream =3D usrp-&gt;get_rx_stream(stream_args);<br><br>Now, how does =
the device recognize 2 channels after the get_rx_stream()=C2=A0 function ha=
s been called, as it earlier on told me there is only one channel, and how =
can I specifically configure the properties of channel 1?<br><div><br></div=
><div>Thanks already in advance for your support!</div><div><br></div><div>=
Br. Julian<br></div></div>

--0000000000000816ed05975fb000--


--===============5371677218792460941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5371677218792460941==--

