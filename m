Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C8B68E42B
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 00:05:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29425380B8B
	for <lists+usrp-users@lfdr.de>; Tue,  7 Feb 2023 18:05:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675811130; bh=T9jlEBl9T/g4H4Yhsi8KJKdsk8Heh4qFwZoM6bPPaTA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=B4AnZw6G1eq3AzYL79kH2LSTovPLerKbWJ1uuwkeFCaHA6rJiY6426ASTZoKFdPVa
	 PwEdbNT9cH72uS7jatq0l0tnPjtBx+gGhljo42AmSD6iFrTg0jwTD1frK8jjzc/mhX
	 JO6GH9QLBqNW8aLEr/m3HOxqx69q1U5mJYuUQ3TmtxRDe11iFv3b8bICpQ3ooRsGEi
	 /JJahJ6v0BYu7VbJG1qaagr5OFC1U4iB5yf+BwRT3k5w8gSyGOxmUPlx3tfKR0TpBu
	 x9ij//vJytCZpQWutYqzE7HVRPvVjrM+jagkc1cQ8dp/gZGJqxcy/k5BPTOQzEE8Eb
	 oWg+gzK/addvA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDC07380A83
	for <usrp-users@lists.ettus.com>; Tue,  7 Feb 2023 18:04:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675811078; bh=wCyn19xQnP2vW7Eva/LaC+NeEK62XSUVTA3F/hvrpmc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=VsNFHcu6pxsD3U38ctQw01tkH+nXuwd5Y5Rwe8q/6SE7ardBlv74LJv/FzTgiRX8Y
	 rq9M6HCtziFMtuSY+0kqcT2q9Vv1M+GPDbNKC6nc0wa0pvR+ilUpbUzMy4Zi97VC+e
	 pOSmLsPQaO+6vCR5QktOeaBxHQBTMznuEuXWBy/bb1hEzgS6+egT+1kFNAEle0ETeb
	 uorz/SaTLj/gELOR/sPnPqFKtLRMgDT2tXBQ7+hBF7zVXg+SUSs6ue7gkpwAG0rnY0
	 Pjv9Paxo9VU/aO6HxfdLsyNcqncw+2W8QamjMpnPCF6EQz0Szd7yTc09xuVt+EgaAs
	 3pd1+lXyZV/kQ==
Date: Tue, 7 Feb 2023 23:04:38 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <85LoDkgi1CbUBr5a72OCeKf2EbJsW0hWZo7oUNzS3JY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Q3fX9UZGpcmKVJRHdUO0yNAmwlAiL6p2OGeYmiKTxs@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: XLTVHZHPW3LCU2GXLFH5NZNG6NY27AJO
X-Message-ID-Hash: XLTVHZHPW3LCU2GXLFH5NZNG6NY27AJO
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Module not found when creating OOT module
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XLTVHZHPW3LCU2GXLFH5NZNG6NY27AJO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7202199911437182493=="

This is a multi-part message in MIME format.

--===============7202199911437182493==
Content-Type: multipart/alternative;
 boundary="b1_85LoDkgi1CbUBr5a72OCeKf2EbJsW0hWZo7oUNzS3JY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_85LoDkgi1CbUBr5a72OCeKf2EbJsW0hWZo7oUNzS3JY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I found explicitly including the verilog in the testbench using =E2=80=9C=
\`include=E2=80=9D worked. However, I found it to be the case that for an=
y module that is needed, even if it was =E2=80=9Cadded=E2=80=9D by the bu=
ilder.

--b1_85LoDkgi1CbUBr5a72OCeKf2EbJsW0hWZo7oUNzS3JY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I found explicitly including the verilog in the testbench using =E2=80=
=9C`include=E2=80=9D worked. However, I found it to be the case that for =
any module that is needed, even if it was =E2=80=9Cadded=E2=80=9D by the =
builder.</p>


--b1_85LoDkgi1CbUBr5a72OCeKf2EbJsW0hWZo7oUNzS3JY--

--===============7202199911437182493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7202199911437182493==--
