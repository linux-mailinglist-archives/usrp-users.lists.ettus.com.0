Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ED680EF0A
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 15:42:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69162384C24
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 09:42:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702392125; bh=0i6NFBhQxv2r5fkUOVX9si61AxGMa6ZzmlqVX3kseJE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=aJ4CEsqBXjdTMp5QYjtIvMLdJDUVbOTc/3o+fR2RPH9EiKEfNkpIvA2880T8/9q/z
	 0Cd18a2NDiQnTkY5x2HolnZbVPQV804Ey40VKlzLntJS3I7tJaZdeYIO7cHB3UCuWk
	 Kah5+6Ffdnx3qVhX5wSsjiXaTS1uJ6oLadyvgFUTIlDVLxbVtfhPiqKrIGx5uOsKBw
	 jS4Vw/lhIcgOtZFO8x3Q0w8W3WpTX0IT7sWF8Zbplq+4Lv4ZIKR+hZ2fOUwuGF1Ehi
	 zwIIq32Ms8d5XJsvOGnDvvFRKPz8r0zXj5omNjxPatRD78slWZ4wndm5gM6/UWQc3y
	 BhPQmupWR86xQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E00E8384D71
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 09:41:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702392072; bh=YYUiVcbousSFLyOLoXRGF8DumuQNodboafjtaDN2anw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kHZj19X7+NR539x+IMO0Bo13kjx7bMoYiaMwwziOQgXGi3pUJY9P2s86TJ/Jf6guu
	 fnuZj+emzyBpxNmpZcI4e2YPHkYrXOurhvo0dXHCobBupCMhs4wSHWm0MTVtVOBZnA
	 /z5Ak+Pgagr5Z0qySHc1jwz5vEchbxqhbl+JxLaJ/7ddfP0zJvqTkJF/wCiC3npaHN
	 Vnwmgz5H4XBfnidQSor+9qvhBa7AJbksYNmzjcnfCxxFh+0EncizZarwr+cU0xeGnU
	 DhiB3r0DMtIixt6hld4wcf+Ef1M0xWQpdwRVXasm2SBq+16Pr3BPG7v8WC4F7RrJhK
	 glopeoOFKlLng==
Date: Tue, 12 Dec 2023 14:41:12 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0bb8f1de-42d8-4331-a086-45687d986b6b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5DHLHI4JL7GABJRJZDQ66FLVO52HXWJO
X-Message-ID-Hash: 5DHLHI4JL7GABJRJZDQ66FLVO52HXWJO
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DHLHI4JL7GABJRJZDQ66FLVO52HXWJO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0914588586386717964=="

This is a multi-part message in MIME format.

--===============0914588586386717964==
Content-Type: multipart/alternative;
 boundary="b1_Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for your answer.\
So, there shouldn=E2=80=99t be any problem on the UHD side with the readi=
ng, is a gnuradio thing, right?\
From what I see on the Python code generated for the Function Probe, it c=
alls the =E2=80=9Cget_int_property=E2=80=9D register function, which seem=
s the one that is used for the register reading in UHD, but I will cross-=
post the question in discuss-gnuradio so they can help me clarify.

Kind Regards,

Maria

--b1_Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Thanks for your answer.<br>So, there shouldn=E2=80=99=
t be any problem on the UHD side with the reading, is a gnuradio thing, r=
ight?<br>From what I see on the Python code generated for the Function Pr=
obe, it calls the =E2=80=9Cget_int_property=E2=80=9D register function, w=
hich seems the one that is used for the register reading in UHD, but I wi=
ll cross-post the question in discuss-gnuradio so they can help me clarif=
y.</p><p>Kind Regards,</p><p>Maria</p>


--b1_Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4--

--===============0914588586386717964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0914588586386717964==--
