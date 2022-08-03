Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E57588EBC
	for <lists+usrp-users@lfdr.de>; Wed,  3 Aug 2022 16:36:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 470EB380911
	for <lists+usrp-users@lfdr.de>; Wed,  3 Aug 2022 10:36:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659537387; bh=xn2KOW7BPTwXog17j+7TfqvvaxTjDpPlBmr1au6YQQE=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=CefIUPQ2AKGzEqEgPBPgQZV4jfZQE5do2/qrX05VwGDUf9tlqQHmSp4Sl5aTC4KeK
	 ccHtBbDSuAVa6DepvoQ8T33+X+jTOF+c6+kd3vmomMQDIXeN2z/xryED8UaE3cJzAu
	 6IPBNn2DEa5Hh4VJzhgrstmDt7vgmemmRaIe0l5aTItHJ88CpDaMDb5qP4DbcQYMP9
	 268g57z4BRpkMvr1+u2HT5SLn3nF8MbOiaX30DgZjT3JPhPo681WJAgn5WJMnMyCNi
	 8SyDorHUwN5IizLdQRGW3U2P6ysD3FGsTw2knvk70RaBchQ8Zn4noyAWcnSNzwWoax
	 E2Y/8PHhj0EuQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C89113810A7
	for <usrp-users@lists.ettus.com>; Wed,  3 Aug 2022 09:19:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659532747; bh=4Fd2Vjd1UjPvK1wNNLczi6mqVL0U0uFIZ4Wlvw6tDkE=;
	h=Date:To:From:Subject:From;
	b=B07VmCjhMWYzq7XiGS/8ffwrtF5yRN+lRbIfWHI/kcRiZKJYDAZwaXUn5ojLAQQM1
	 /CoVGEQjCweqvz2kAPDVn4/zgvEtfFyyat4EJkIPJfNS37344iwfL8pRZxQ2JOoEbp
	 82ACPgRdnHLWNr7tPkSZwln4lrN+CGUD4kqCq48fQCAyPyk5NolUDlIt3Hv0YUQNa7
	 6lTLM1ctktxnFAdkE4sCImg9ohK58aBZC/GTipCYsMMDQEHkzwd60v9oIkVQQzX7bS
	 NnkNCDtkJbcqlRSILs7RqSSjwIcaNUu8H/ZMl1XXnmRLbQVraZoWZMx8MP+7tJIo1j
	 2hV0a4kX+UDJQ==
Date: Wed, 3 Aug 2022 13:19:07 +0000
To: usrp-users@lists.ettus.com
Message-ID: <qchbro2Uze8GdGfoPyfrxtDYCRkkHd4nUUFGfVd34vI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 4YCUFW4FLJ4I5EEJ3P3QF3K6URHNEVUX
X-Message-ID-Hash: 4YCUFW4FLJ4I5EEJ3P3QF3K6URHNEVUX
X-MailFrom: k19033844@kcl.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] nr-softmodem run error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4YCUFW4FLJ4I5EEJ3P3QF3K6URHNEVUX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: k19033844--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: k19033844@kcl.ac.uk
Content-Type: multipart/mixed; boundary="===============4674378682540663582=="

This is a multi-part message in MIME format.

--===============4674378682540663582==
Content-Type: multipart/alternative;
 boundary="b1_qchbro2Uze8GdGfoPyfrxtDYCRkkHd4nUUFGfVd34vI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qchbro2Uze8GdGfoPyfrxtDYCRkkHd4nUUFGfVd34vI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear All,

I=E2=80=99ve successfully built uhd and other dependencies, however, when=
 I execute this command `sudo ./nr-softmodem -O ../../../targets/PROJECTS=
/GENERIC-NR-5GC/CONF/gnb.sa.band78.fr1.106PRB.usrpb210.conf --sa -E --con=
tinuous-tx`.=20

I got the following error:nr-softmodem: /usr/include/boost/smart_ptr/shar=
ed_ptr.hpp:734: typename boost::detail::sp_member_access<T>::type boost::=
shared_ptr<T>::operator->() const \[with T =3D uhd::property_tree; typena=
me boost::detail::sp_member_access<T>::type =3D uhd::property_tree\*\]: A=
ssertion \`px !=3D 0' failed. Aborted.

My software information is linux; GNU C++ version 7.4.0; Boost_106501; UH=
D_3.14.1.1-release.

Can anyone help me on this issue?

Thanks a lot.

Warm regards,

Guang

--b1_qchbro2Uze8GdGfoPyfrxtDYCRkkHd4nUUFGfVd34vI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear All,</p><p>I=E2=80=99ve successfully built uhd and other dependen=
cies, however, when I execute this command <code>sudo ./nr-softmodem -O .=
./../../targets/PROJECTS/GENERIC-NR-5GC/CONF/gnb.sa.band78.fr1.106PRB.usr=
pb210.conf --sa -E --continuous-tx</code>. </p><p>I got the following err=
or:nr-softmodem: /usr/include/boost/smart_ptr/shared_ptr.hpp:734: typenam=
e boost::detail::sp_member_access&lt;T&gt;::type boost::shared_ptr&lt;T&g=
t;::operator-&gt;() const [with T =3D uhd::property_tree; typename boost:=
:detail::sp_member_access&lt;T&gt;::type =3D uhd::property_tree*]: Assert=
ion `px !=3D 0' failed. Aborted.</p><p>My software information is linux; =
GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.1-release.</p><p>Can anyo=
ne help me on this issue?</p><p>Thanks a lot.</p><p>Warm regards,</p><p>G=
uang</p><p class=3D""><br></p>


--b1_qchbro2Uze8GdGfoPyfrxtDYCRkkHd4nUUFGfVd34vI--

--===============4674378682540663582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4674378682540663582==--
