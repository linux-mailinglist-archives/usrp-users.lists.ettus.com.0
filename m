Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F76F5F95
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 22:03:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38A6F3848AD
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 16:03:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683144218; bh=xshgMmNpFiP3EI6n5f23RjFw1OEmLdSSi5vcanTe+QQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AC1+pBOaJJcgRBc7ao19BiEbsBdFSl35I0KBM2GyEBmdYGgnysrJ/cRUL+cx/PEp3
	 xd+Te+wNOt8wt+Be/AZ6dcc9C8EfXm6IXe3hWnqbFNl/YGmug+yLBv5MPqGgyclTxt
	 4NZaMFEpiGt7UZu2FrbT3VH4Dyg866q9j+gdwZumQaSCgck9Eg0wwRcLbPjTj1xW0r
	 0GplC0ZECxldfVejKjijb6Crn6vubjoRiO4b6qOETtMy61uGUkl0Ub5XT3JTH+92VZ
	 a7t5O6Ucd3VQUin3r3EtcIAlDtb98FAB48YuNv9XWPlMubIGsgVWJTauc1/6dfPqEw
	 u0wqiSq4eKzCA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B614338469E
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 16:02:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683144177; bh=IR+Mqz+kugYkpj2q7+O5z2qAsS68Fj9oxbimWwQMoqg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xyULZ35Sk7QtPpJV72ieR89gmT6QnC07Y9q44FrXyf9YwMi2lFH6zUO0iW5O0fnXa
	 woNM19ysoqN5rpCxotDS1IsD29opI7Gd3K5Vh8Au+RHADbJP627Pc9JGTlhc/zHyUi
	 IWghgBmK4bBuEglNad0Dvf1PCxyAUk3XtKm9x4bX6q6cF97XxOrtDdc6rNMtXNBpWL
	 3DLaiO7DnjJrpCzoNdBIYfKWDtu2bOyPYi4zGho3oo9iPfAb3ZLHc5tx9dOYp3fG9f
	 P6JWJzMUl8TWxBRR7pJml6QojENP6TcRdQB6hc9iOImNLnsMRmrm1KAtQhlO7vVL87
	 VcNV7Ts9nAeJw==
Date: Wed, 3 May 2023 20:02:57 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK5Y4O_KD+uSro0afsbXcO24cz5iWz5itgEzNq3pUUmXpw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BVBTHVVY3JHPUEITWVNAZAFCKSTGUEBE
X-Message-ID-Hash: BVBTHVVY3JHPUEITWVNAZAFCKSTGUEBE
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Block Not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BVBTHVVY3JHPUEITWVNAZAFCKSTGUEBE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4082899214377131896=="

This is a multi-part message in MIME format.

--===============4082899214377131896==
Content-Type: multipart/alternative;
 boundary="b1_tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws
Content-Type: text/plain; charset=us-ascii

This is the output of uhd_usrp_probe

/

|       Device: N300-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: ni-n3xx-3255102

|   |   dboard_0_pid: 338

|   |   dboard_0_serial: 3252A17

|   |   dboard_1_pid: 338

|   |   dboard_1_serial: 3252A18

|   |   eeprom_version: 3

|   |   fs_version: 20230131233809

|   |   mender_artifact: v4.4.0.0_n3xx

|   |   mpm_sw_version: 4.4.0.0-g5fac246b

|   |   pid: 16962

|   |   product: n320

|   |   rev: 10

|   |   rpc_connection: remote

|   |   serial: 3255102

|   |   type: n3xx

|   |   MPM Version: 4.4

|   |   FPGA Version: 8.1

|   |   FPGA git hash: 5fac246.dirty

|   |   RFNoC capable: Yes

|   |   

|   |   Time sources:  internal, external, gpsdo, sfp0

|   |   Clock sources: external, internal, gpsdo

|   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv

|     _____________________________________________________

|    /

|   |       RFNoC blocks on this device:

|   |   

|   |   \* 0/Block#0

|   |   \* 0/Block#1

|   |   \* 0/Radio#0

|   |   \* 0/Radio#1

|   |   \* 0/Replay#0

|     ________________

--b1_tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>This is the output of uhd_usrp_probe</p><p><br></p><p>/</p><p>|       De=
vice: N300-Series Device</p><p>|     ______________________________________=
_______________</p><p>|    /</p><p>|   |       Mboard: ni-n3xx-3255102</p><=
p>|   |   dboard_0_pid: 338</p><p>|   |   dboard_0_serial: 3252A17</p><p>| =
  |   dboard_1_pid: 338</p><p>|   |   dboard_1_serial: 3252A18</p><p>|   | =
  eeprom_version: 3</p><p>|   |   fs_version: 20230131233809</p><p>|   |   =
mender_artifact: v4.4.0.0_n3xx</p><p>|   |   mpm_sw_version: 4.4.0.0-g5fac2=
46b</p><p>|   |   pid: 16962</p><p>|   |   product: n320</p><p>|   |   rev:=
 10</p><p>|   |   rpc_connection: remote</p><p>|   |   serial: 3255102</p><=
p>|   |   type: n3xx</p><p>|   |   MPM Version: 4.4</p><p>|   |   FPGA Vers=
ion: 8.1</p><p>|   |   FPGA git hash: 5fac246.dirty</p><p>|   |   RFNoC cap=
able: Yes</p><p>|   |   </p><p>|   |   Time sources:  internal, external, g=
psdo, sfp0</p><p>|   |   Clock sources: external, internal, gpsdo</p><p>|  =
 |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_ti=
me, gps_tpv</p><p>|     ___________________________________________________=
__</p><p>|    /</p><p>|   |       RFNoC blocks on this device:</p><p>|   | =
  </p><p>|   |   * 0/Block#0</p><p>|   |   * 0/Block#1</p><p>|   |   * 0/Ra=
dio#0</p><p>|   |   * 0/Radio#1</p><p>|   |   * 0/Replay#0</p><p>|     ____=
____________</p>

--b1_tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws--

--===============4082899214377131896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4082899214377131896==--
