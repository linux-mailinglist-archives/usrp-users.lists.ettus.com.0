Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1807C108AF4
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2019 10:33:28 +0100 (CET)
Received: from [::1] (port=43872 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iZAkF-00071T-53; Mon, 25 Nov 2019 04:33:23 -0500
Received: from mail-wm1-f48.google.com ([209.85.128.48]:37544)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <julian.ilinca.fgi@gmail.com>)
 id 1iZAkB-0006xz-N9
 for usrp-users@lists.ettus.com; Mon, 25 Nov 2019 04:33:19 -0500
Received: by mail-wm1-f48.google.com with SMTP id f129so13672012wmf.2
 for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2019 01:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=7j6dc799MdxaMIJufovikF5ILR830qFz3UIxY5PwI7s=;
 b=DDQ0nOeRpeBLFH4LJYhqeUIlEZQgO654IeD+2ugWx7a9WREmEgg4/8JX0nBJFJ50cY
 SBJiXuld+HZE0QfQBDXCsbcPmomZV3lpcGXAB8PNecUmw/URThK2n4XY+NBkThLDWKjk
 a7foeAr7B7EzOs/GaJ8y+/qrV9ST35wpM5sDwT8JCdmB2mWtGlxlAeCkuUTAEF3S8iMI
 1ij6nBUajO0O2JuZM/GddADmgzyz38giWUeX9GM8pXk6lZLclFO7KBNfoTz1zHP0vngG
 CXwMllj5FtTd4WkzxEAUbfwmK5DX0Tbm4oJ/aRDkuT5Qk2A/NILpxEmuAqoj0r/JZxDM
 HYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7j6dc799MdxaMIJufovikF5ILR830qFz3UIxY5PwI7s=;
 b=jFHWFtZaHhu/IoIPTVq5A7rH9lmTxHFeswhYtmlmN1TLN/xL5KddU0HP3OxGUPuKd9
 TANQNBfmAZEn0bobwsLzt73R0NyS4ksfC5s/q8iWlIfo0W0nBmKiURuekE2AGr17LNs8
 aH8+BjtkZHhiwaKW1mXMLXEDmQ2sKqFa5fCq8nMZad7XKnCi4IMfCmrO/oiBAsWUMrOe
 9KyuPF1V9q5MbeIEM18/H7ZBKx8N+5FvptKNqlawjDh5kl3hjpFCYhd2aGyZoGqfWN0v
 JfL9Vg1zH2x6mchz7INMqHtAGlt+8h0VgM8pF2DSuX3Sarw+rIe1LI7d2DQnWPkW5+77
 ylzg==
X-Gm-Message-State: APjAAAUFdRQxZOMnfYvMeFxNSMOg5TsOleb9LZx9euOrGJ13eS/3Cv/r
 YRlpXABDfrZZ7HeNSprdN5Ew1jFFI3y7yrs4S30gc+q5
X-Google-Smtp-Source: APXvYqwuvCAwbYlfxqzrlO1hYw4A+O7wm0KR14+iVqtPpoPV1VRJKNnawd6FPtOohi6H1EvV4F6FMywb/zLjGBnVBzU=
X-Received: by 2002:a7b:c92c:: with SMTP id h12mr14108087wml.106.1574674358285; 
 Mon, 25 Nov 2019 01:32:38 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 25 Nov 2019 11:32:54 +0200
Message-ID: <CAB1PH1557Loir3KTYXmky=PCtqYmYz+SPga9tN+phXmhraGT3w@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6045762807548078381=="
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

--===============6045762807548078381==
Content-Type: multipart/alternative; boundary="000000000000c3385405982871f9"

--000000000000c3385405982871f9
Content-Type: text/plain; charset="UTF-8"

Hello all,

This message is a reply to a previous thread which I started. The contents
of which can be found below.

https://www.mail-archive.com/usrp-users@lists.ettus.com/msg09327.html

My question now concerns what data is actually stored in the final I and Q
components that are sent to the host. The question and the answer are
presented below.

Q1
The daughter-board is set so that one channel retrieves the I component and
the other channel the Q. I retrieved this information with the
uhd_usrp_probe command. In the output under RX0 its says connection type =
Q and on RX1 connection type = I. What command do I have to use to change
connection type of RX0 from Q to I, so that I could have two channels
measuring the real component.

A1
That isn't possible.  Signals are presented to the host as complex
samples.  The TVRX2 *analog hardware* uses a so-called "low-IF"
architecture, and the N210 has a single 2-channel complex ADC.  Each of
those two channels is *hard wired* to go to one of the ADC channels, and
the DDC algorithms in the FPGA convert that to a complex base-band signal
that is then filtered, downsampled, and sent to the host computer.

From this answer, am I to understand that both of the signals coming from
antenna 1 and 2 respectively are first mixed with a signal provided by the
local oscillator (LO) so that they are separately converted to baseband.
After which the information of the baseband originating from antenna 1 is
stored in the Real part of the complex number and the signal coming from
antenna 2 to imaginary part. And only then then filtering and down sampling
occurs. What I want to know is that are the downsampled and filtered
baseband signals from antenna 1 and 2 preserved in the IQ components
respectively.

Furthermore, as I and Q usually mean in-phase and quadrature component, is
the signal coming from antenna 2 mixed with a LO-signal that has been
shifted by 90 degrees in phase compared to the LO-signal that is mixed with
channel 1.

Thank you again

PS.
I'm sorry, but I could not reply directly to the thread as I did not
receive a response email to my in-box. If someone can instruct me how to
accomplish the reply procedure with gmail, or provide a link with the
relevant information I would be more than happy to use the list as it is
intended to be used.

--000000000000c3385405982871f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<br><br>This message is a reply to a previous th=
read which I started. The contents of which can be found below.<br><br><a h=
ref=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg09327.htm=
l">https://www.mail-archive.com/usrp-users@lists.ettus.com/msg09327.html</a=
><br><br>My question now concerns what data is actually stored in the final=
 I and Q components that are sent to the host. The question and the answer =
are presented below. <br><br>Q1<br>The daughter-board is set so that one ch=
annel retrieves the I component and the other channel the Q. I retrieved th=
is information with the uhd_usrp_probe command. In the output under RX0 its=
 says connection type =3D Q and on RX1 connection type =3D I. What command =
do I have to use to change connection type of RX0 from Q to I, so that I co=
uld have two channels measuring the real component.<br><br>A1<br>That isn&#=
39;t possible.=C2=A0 Signals are presented to the host as complex samples.=
=C2=A0 The TVRX2 *analog hardware* uses a so-called &quot;low-IF&quot; arch=
itecture, and the N210 has a single 2-channel complex ADC.=C2=A0 Each of th=
ose two channels is *hard wired* to go to one of the ADC channels, and the =
DDC algorithms in the FPGA convert that to a complex base-band signal that =
is then filtered, downsampled, and sent to the host computer.<br><br>From t=
his answer, am I to understand that both of the signals coming from antenna=
 1 and 2 respectively are first mixed with a signal provided by the local o=
scillator (LO) so that they are separately converted to baseband. After whi=
ch the information of the baseband originating from antenna 1 is stored in =
the Real part of the complex number and the signal coming from antenna 2 to=
 imaginary part. And only then then filtering and down sampling occurs. Wha=
t I want to know is that are the downsampled and filtered baseband signals =
from antenna 1 and 2 preserved in the IQ components respectively.<br><br>Fu=
rthermore, as I and Q usually mean in-phase and quadrature component, is th=
e signal coming from antenna 2 mixed with a LO-signal that has been shifted=
 by 90 degrees in phase compared to the LO-signal that is mixed with channe=
l 1.<br><br>Thank you again<br><br>PS.<br>I&#39;m sorry, but I could not re=
ply directly to the thread as I did not receive a response email to my in-b=
ox. If someone can instruct me how to accomplish the reply procedure with g=
mail, or provide a link with the relevant information I would be more than =
happy to use the list as it is intended to be used.</div>

--000000000000c3385405982871f9--


--===============6045762807548078381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6045762807548078381==--

