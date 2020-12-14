Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F01D2D9ABA
	for <lists+usrp-users@lfdr.de>; Mon, 14 Dec 2020 16:20:13 +0100 (CET)
Received: from [::1] (port=56002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kopdz-0008CQ-J1; Mon, 14 Dec 2020 10:20:11 -0500
Received: from mail-pl1-f172.google.com ([209.85.214.172]:45486)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bnguyen@mynote.net.au>)
 id 1kopdv-00085R-K3
 for usrp-users@lists.ettus.com; Mon, 14 Dec 2020 10:20:07 -0500
Received: by mail-pl1-f172.google.com with SMTP id e2so1624543plt.12
 for <usrp-users@lists.ettus.com>; Mon, 14 Dec 2020 07:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mynote-net-au.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=cUbZkeey0nRxObvZT1VyrQTmf3pib0tk4MBsKqguu3Y=;
 b=bEVAZ+aP5SMCajIzLJ/bxM17nc6sYspc8akXs3so3KX97Ezd2LmxfobcVwANmnMnpl
 A1K5Qmrzizqo51yrBVcn8hMaQENyL6XsYqKdjXPIYcxXKyY1LNZ3JJyvgAA7RJOLiQnd
 2KxE1vhd49oX66rMiQDdCLRAI1PP5O0JJK1Mjx86bYe2buGITcBkn1eQN6ysl8GeY3Ez
 w0O6ewakCbrEi1c1f2WRMwOtNlAZlPInDkl5EWUMSFLVImf31dWNQAhdKpzDthqRE9uB
 1OJeOOYlKkHIUhJ1Pa2/X2KreUmtTMtvUlsDa345ylLbyByGzhoD/j49qdfKKaEuLftX
 5baw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cUbZkeey0nRxObvZT1VyrQTmf3pib0tk4MBsKqguu3Y=;
 b=GUdKA8BvQcwtATpk3Lt54VTkJzt6br4pJXSOhtvAuW3xhbbX0jZ9aojgTmEKSk2/SE
 vkFnt1IA+ai4B6FvMwEtjBZ8BzkL0TEQsqfnIzA7OtJ9sKIuoX5W984nuMneilC9veBZ
 7N8WsU3cUC4Z3zDcyUJrL2YqJHm1fil+pePInbr3mFSoqzU99l99nU3n4r7Yq9/KkCgf
 XAvBxphzQTUtQXaTK+jLDfDpnMNMUcoKBTBBm1I1vQZODDmHmFkRqj7eCHFNKWWcF9/p
 Xv0aB51R+ezWjC23kqR0nh1juzKjk0sC6CD6A6gvtrhjYympDIvE47hJ8VpkKzi8rWG4
 4j6Q==
X-Gm-Message-State: AOAM530497KqJ0G5c4CMbuaSlvyINWeH/ijmm94RPh5Ri1T/YkQT9sr2
 nk+vEtjzpMlYDL9dCec16GIcRdBU46vZV7L/nXaWFdq1etg5g7aWtnY=
X-Google-Smtp-Source: ABdhPJxzAGp7JGIE243GKs0+ACjGVdu7szny6EA683iFLMuJurJ2jtJ+JHYlBXkOGj1qnDv/r0whUyV2WMdPi38pqp4=
X-Received: by 2002:a17:90a:5901:: with SMTP id
 k1mr25519598pji.7.1607959165344; 
 Mon, 14 Dec 2020 07:19:25 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 14 Dec 2020 23:19:14 +0800
Message-ID: <CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] LO phase alignment for multiple B200s
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
From: Bach Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Bach Nguyen <bnguyen@mynote.net.au>
Content-Type: multipart/mixed; boundary="===============0847114653660161254=="
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

--===============0847114653660161254==
Content-Type: multipart/alternative; boundary="000000000000dd389705b66e2a92"

--000000000000dd389705b66e2a92
Content-Type: text/plain; charset="UTF-8"

Hi all,

I was using my 2 B200s to measure the magnitude and phase difference in
voltage gain of two signal chains on-site and I notice that there is a
random phase offset between the 2 inputs. I read the USRP Manual on Device
Synchronization and realize that I was tuning the 2 B200 asynchronously,
even though I had them start streaming synchronously using the external
PPS. There are several things that I would like to ask and clarify:

   1. Does the usrp->set_command_time(cmd_time) set all the subsequent
   command (before clear_command_time()) to start after cmd_time seconds or
   they will start at the exact cmd_time instant in the time registers?
   2. Once I retune the 2 B200s simultaneously to centre frequency f1, then
   the device is closed or re-tuned to other frequency, f2, if I re-tune it
   back to center frequency f1, would the phase offset between the 2 B200 RX
   streams be the same as original, when I firstly re-tuned it?
   3. Does the phase offset, after re-tuning, varies with different centre
   frequency (ie. offset at frequency f1 different from frequency f2)?
   4. My code was a modified version of the rx_samples_to_file.cpp, with
   the synchronization principle mentioned below. Would it be enough to make
   the 2 B200s synchronized with constant phase offset between LOs? Besides,
   the program was started for a week, then stopped completely, and re-started
   again after a few days (I regard this as "device is closed", and
   re-initialized) , would the phase offset between LO, in this case, remains
   constant as before the stop?

The program I used has 2 threads, each for 1 B200. The threads' tasks
(after adding the LO alignment part) are:

   - 1st thread: Call set_time_unknown_pps() on the 1st B200,once done,
   send sync_signal to 2nd B200. Then use the set_command_time(3.0),
   set_rx_freq(fc,0) and clear_command_time() for LO phase offset.
   - 2nd thread: Keep polling the sync_signal, once it receives, use
   set_time_next_pps(1.0) to synchronize the 2 B200. Once done, I use the
   set_command_time(3.0), set_rx_freq(fc,0) and clear_command_time() for LO
   phase offset.
   - After the above steps, both threads have a while loop to keep polling
   the value of time register for the last PPS, if it is 5 seconds then the
   stream command is issued in both threads. After that, I use the
   rx_stream->recv to record the samples from the 2 B200s.

Cheers,
Bach

--000000000000dd389705b66e2a92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:12pt">Hi all,</div><div style=3D"f=
ont-size:12pt"><br></div><div style=3D"font-size:12pt">I
 was using my 2 B200s to measure the magnitude and phase difference in=20
voltage gain of two signal chains on-site and I notice that there is a=20
random phase offset between the 2 inputs. I read the USRP Manual on=20
Device Synchronization and realize that I was tuning the 2 B200 <span class=
=3D"gmail-x_ILfuVd gmail-x_NA6bn"><span class=3D"gmail-x_hgKElc">asynchrono=
usly</span></span>,
 even though I had them start streaming synchronously using the external
 PPS. There are several things that I would like to ask and clarify:</div><=
div style=3D"font-size:12pt"><ol><li>Does
 the usrp-&gt;set_command_time(cmd_time) set all the subsequent command=20
(before clear_command_time()) to start after cmd_time seconds or they=20
will start at the exact cmd_time instant in the time registers?</li><li>Onc=
e
 I retune the 2 B200s simultaneously to centre frequency f1, then the=20
device is closed or re-tuned to other frequency, f2, if I re-tune it=20
back to center frequency f1, would the phase offset between the 2 B200=20
RX streams be the same as original, when I firstly re-tuned it?</li><li>Doe=
s
 the phase offset, after re-tuning, varies with different centre=20
frequency (ie. offset at frequency f1 different from frequency f2)?</li><li=
>My
 code was a modified version of the rx_samples_to_file.cpp, with the=20
synchronization principle mentioned below. Would it be enough to make=20
the 2 B200s synchronized with constant phase offset between LOs?=20
Besides, the program was started for a week, then stopped completely,=20
and re-started again after a few days (I regard this as &quot;device is=20
closed&quot;, and re-initialized) , would the phase offset between LO, in=
=20
this case, remains constant as before the stop?<br></li></ol></div><div sty=
le=3D"font-size:12pt">The program I used has 2 threads, each for 1 B200. Th=
e threads&#39; tasks (after adding the LO alignment part) are:<br></div><di=
v style=3D"font-size:12pt"><ul><li>1st
 thread: Call set_time_unknown_pps() on the 1st B200,once done, send=20
sync_signal to 2nd B200. Then use the set_command_time(3.0),=20
set_rx_freq(fc,0) and clear_command_time() for LO phase offset.<br></li><li=
>2nd
 thread: Keep polling the sync_signal, once it receives, use=20
set_time_next_pps(1.0) to synchronize the 2 B200. Once done, I use the=20
set_command_time(3.0), set_rx_freq(fc,0) and clear_command_time() for LO
 phase offset.</li><li>After the above steps, both threads have a while=20
loop to keep polling the value of time register for the last PPS, if it=20
is 5 seconds then the stream command is issued in both threads. After=20
that, I use the rx_stream-&gt;recv to record the samples from the 2=20
B200s.</li></ul><div>Cheers,</div><div>Bach</div></div></div>

--000000000000dd389705b66e2a92--


--===============0847114653660161254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0847114653660161254==--

