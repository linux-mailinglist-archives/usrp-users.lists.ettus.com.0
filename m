Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6D29FC1E2
	for <lists+usrp-users@lfdr.de>; Tue, 24 Dec 2024 21:06:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B6E838647B
	for <lists+usrp-users@lfdr.de>; Tue, 24 Dec 2024 15:06:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735070808; bh=npVIyjrgSCZs0qN3lHuyXWaNTvUP1Zh6nLo3C+tD/Rc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hNYpvEmWUMik+JByBCDDKzcZ/IdKH/A1utXsPn3V1iF1qT9pfb7vZuUh9Qc3IwLcH
	 W1enBDqEtW5SbReqhAh0+cyAlbBbeQdVOTnW2Hrz7Iu2L8I0VJJCYEYVYJvtiaT+WR
	 orUOhn3ZxxA2QCUfP5mIeg48CME1g2he177TO9Xe47KwxPkl2SAERqsGfzQqJweEbi
	 xJl1Tv66uLD+D3vAeE7+nimoI9v+zDKdrFLNtoXe+TNNhUxBs56DetbdbNbotS34yI
	 LvQoZyF/XxBLn9hjwCrohbn/3V3ZywQkNi1QvBnI6/veQ3YDOJyiad8a9b20BLZN/v
	 NSPQvpQr13w4A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AED5D38643C
	for <usrp-users@lists.ettus.com>; Tue, 24 Dec 2024 15:06:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735070803; bh=wSBAfF/AqBA4qbf1gX8Sb1/YpGvIV8DINjUHDzj7cF0=;
	h=Date:To:From:Subject:From;
	b=LpsfxUl6TAeHwGImkIqCXkbTSLXfrMmDkHmEwvOUi1tHFPgot3tHzvgIGg8ABo1af
	 TevRDvha+ZFBUNdjSpIwOrXR+28sSyTjOz2oHzh7iPWMkYAF9GFpmNyQuL8M+yUtAp
	 C4Rzmj50MOK7rxdR7Hv5JJBgt+n9sWq+ECH6O/27cPPLaVCL96JdBIKb0s+VqMXLCX
	 FWE1KGsUtlFsF4vAW4a4RRLT7pAYQwyFlQ1Oyg0E1ZJr6dSW2Pt86MFutpEFRx/K3Y
	 17GYTjkir1Rvv8GVzjIzE1F3+Xra6LN0Pdca+Bnifu81+0jXCwjqZ43DBjlznTkR3X
	 HXQbnialaDLjA==
Date: Tue, 24 Dec 2024 20:06:43 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: QKFVRD2MQX6V33J3VYFLLK4O4I757VAA
X-Message-ID-Hash: QKFVRD2MQX6V33J3VYFLLK4O4I757VAA
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QKFVRD2MQX6V33J3VYFLLK4O4I757VAA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8590781165733822902=="

This is a multi-part message in MIME format.

--===============8590781165733822902==
Content-Type: multipart/alternative;
 boundary="b1_LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

**Hi,**

**Hopefully you can help me out with some clarification and help on a few=
 questions.**

**We are using the X310 all with timestamps as we try to get an understan=
ding of the behavior.=C2=A0 We have created several scenarios to try out =
start of burst and end of burst and have noticed different behavior.**=C2=
=A0=C2=A0

**Scenario 1 is a =E2=80=9Csingle burst=E2=80=9D for a bunch of samples s=
ent (for example 1996 samples of std::vector<std::complex<int16_t>>) wher=
e start_of_burst=3Dend_of_burst=3Dtrue via send(includes timeout).**=C2=A0=
=C2=A0

**Scenario 2 is a =E2=80=9Ccontinuous burst=E2=80=9D where we start_of_bu=
rst=3Dtrue for the first 1996 packet only with end_of_burst=3Dfalse.=C2=A0=
 All other packets have end_of_burst=3Dfalse**

**\
1) What is the difference between the "S" and "L"?=C2=A0 When we see "S" =
with the single-burst case, is that really the same as an "L"?**

**We have overhead to do between sending samples, so we are trying to fig=
ure out the best way to do the overhead work and still send() on time at =
our desired rate (still using timestamps).**

**We noticed through experimentation that the =E2=80=9Csystem=E2=80=9D (P=
C TCP/IP Stack <-> USRP buffering) could buffer a very large packet of 19=
96\*65=3D129,740 samples before we received flow-control, which means tha=
t we could send a bunch of samples with future timestamps to give us some=
 time to do the =E2=80=9Coverhead=E2=80=9D. =C2=A0 Of course 1996 is used=
 because it is the largest UDP packet before fragmentation occurs with UD=
P on USRP.**

**2) Is our observation about the 129K samples of buffering correct?=C2=A0=
 Is there something we can do to increase this?=C2=A0 For example, maybe =
some tweaks to the receive buffer sizes in the TCP/IP stack to make recei=
ve work reliably.**

**3) What is the recommendation in terms of burst size (to allow us to do=
 our =E2=80=9Coverhead=E2=80=9D)**

**Thanks**

--b1_LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><strong>Hi,</strong></p><p><strong>Hopefully you can help me out with so=
me clarification and help on a few questions.</strong></p><p><strong>We are=
 using the X310 all with timestamps as we try to get an understanding of th=
e behavior.&nbsp; We have created several scenarios to try out start of bur=
st and end of burst and have noticed different behavior.&nbsp;&nbsp;</stron=
g></p><p><strong>Scenario 1 is a =E2=80=9Csingle burst=E2=80=9D for a bunch=
 of samples sent (for example 1996 samples of std::vector&lt;std::complex&l=
t;int16_t&gt;&gt;) where start_of_burst=3Dend_of_burst=3Dtrue via send(incl=
udes timeout).&nbsp;&nbsp;</strong></p><p><strong>Scenario 2 is a =E2=80=
=9Ccontinuous burst=E2=80=9D where we start_of_burst=3Dtrue for the first 1=
996 packet only with end_of_burst=3Dfalse.&nbsp; All other packets have end=
_of_burst=3Dfalse</strong></p><p><strong><br>1) What is the difference betw=
een the "S" and "L"?&nbsp; When we see "S" with the single-burst case, is t=
hat really the same as an "L"?</strong></p><p><strong>We have overhead to d=
o between sending samples, so we are trying to figure out the best way to d=
o the overhead work and still send() on time at our desired rate (still usi=
ng timestamps).</strong></p><p><strong>We noticed through experimentation t=
hat the =E2=80=9Csystem=E2=80=9D (PC TCP/IP Stack &lt;-&gt; USRP buffering)=
 could buffer a very large packet of 1996*65=3D129,740 samples before we re=
ceived flow-control, which means that we could send a bunch of samples with=
 future timestamps to give us some time to do the =E2=80=9Coverhead=
=E2=80=9D. &nbsp; Of course 1996 is used because it is the largest UDP pack=
et before fragmentation occurs with UDP on USRP.</strong></p><p><strong>2) =
Is our observation about the 129K samples of buffering correct?&nbsp; Is th=
ere something we can do to increase this?&nbsp; For example, maybe some twe=
aks to the receive buffer sizes in the TCP/IP stack to make receive work re=
liably.</strong></p><p><strong>3) What is the recommendation in terms of bu=
rst size (to allow us to do our =E2=80=9Coverhead=E2=80=9D)</strong></p><p>=
<strong>Thanks</strong></p><p><br><br></p>

--b1_LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4--

--===============8590781165733822902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8590781165733822902==--
