Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B31621B17
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 18:49:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0D22383E62
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 12:49:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667929764; bh=Q2H44Jrt47/+jphNBrOnbm4Xvz9ovQN7B3Hmk295XPg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=q/NfY1b/o+HaapR5hHkOQ/sPRiZ6Dne4NpxhclwtGW+226AlMoLi8NmviJ+cLl+BI
	 vEv2Dspx34YnbRUc0hvbMctrjyuUNYlGrQX+PjQsK3edUQRo/9zP2jUURbs+FXdMyD
	 Cr5dD+6nr0c2Gbfl+hTqj7zaRWCDetgHvDDNaU0bpPRcAiGFDTlllmd22geQDB5DXn
	 VM+4JLQguVqw88af9fLpPnVf//exsEUDy/2BIrkfN2YAM8p4L57/ubDyHY2IKWxa1G
	 8IMpfIOzyh40O+C4h7IIAui+4Ix4g2bJpJ0FBgERpfuw9yngaohGKOIilKtVzvYtZy
	 C21PN0rcNKAjg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6582C383DEA
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 12:47:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667929658; bh=qDEhN5LavARh4gceItVSNeyMi8MxW2apO/LnO7+Zpp8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=hZYkA6AfJY6M1t/gRVUZqf0C9ItmDEf+1UvVjgOADDS5XYdyx/CYVTI2G4UV/zMPD
	 YwbehtGWgSqeHs8yqTuAwP+q/hBOZEwJ4aBKSN4M0sKQJrryz8y1pTAK6kz+ETgyla
	 JN815Q8fW6yc0++OAv6kse323QtamDNBGsIjDGCitOy7ec2EJKAzHQvvu3lYEVpo0R
	 CcFKZsEtwe/co0ZE5ci6UqFTeLtZuYqLADCynhkvL7+1Tnl5CBTdLpeMdCZ8zDy9HL
	 QIAVl6X+lj0Lt72StV5CXlZvnQ9cTiedd2ebN4KpT8qiIdbFhXtaznINp9BC+bHjwK
	 tRb2GF1jjtvbg==
Date: Tue, 8 Nov 2022 17:47:38 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: dcdb09bf-11f0-872e-393f-51aaf14243e1@gmail.com
MIME-Version: 1.0
Message-ID-Hash: IDODIZ72ZSSNBMLMEFQBYYXNUH5HLDRO
X-Message-ID-Hash: IDODIZ72ZSSNBMLMEFQBYYXNUH5HLDRO
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom FPGA image "version" register
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IDODIZ72ZSSNBMLMEFQBYYXNUH5HLDRO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2592647937321951844=="

This is a multi-part message in MIME format.

--===============2592647937321951844==
Content-Type: multipart/alternative;
 boundary="b1_RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I found the following line in uhd_usrp_probe that looks like it does what=
 I=E2=80=99m looking for:

`if (tree->exists(path / "fw_version")) {`

` ss << "FW Version: " << tree->access<std::string>(path / "fw_version").=
get()`

` << std::endl;`

` }`

The next question is where does the firmware version get set? I did some =
poking around fpga/usrp3/top, but it=E2=80=99s not immediately obvious. I=
s this set somewhere in the build scripts? I run the standard Makefile wh=
en I build my custom image. I would like to write something so I can defi=
nitely distinguish this FPGA is running my modified firmware.

--b1_RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I found the following line in uhd_usrp_probe that looks like it does w=
hat I=E2=80=99m looking for:</p><p><code>if (tree-&gt;exists(path / "fw_v=
ersion")) {</code></p><p><code> ss &lt;&lt; "FW Version: " &lt;&lt; tree-=
&gt;access&lt;std::string&gt;(path / "fw_version").get()</code></p><p><co=
de> &lt;&lt; std::endl;</code></p><p><code> }</code></p><p>The next quest=
ion is where does the firmware version get set? I did some poking around =
fpga/usrp3/top, but it=E2=80=99s not immediately obvious. Is this set som=
ewhere in the build scripts? I run the standard Makefile when I build my =
custom image. I would like to write something so I can definitely disting=
uish this FPGA is running my modified firmware. </p>


--b1_RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80--

--===============2592647937321951844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2592647937321951844==--
