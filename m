Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F45540229
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 17:12:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5632C383E87
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 11:12:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654614728; bh=+AtMoBccKdOUXTjSK7qpjtzmOrftE4RwZvOF7Nk9R5E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sXcRnBuNcxbqQj9KtVj9kZEQNw6ejMmQW2CpB5PPZjAFf2BONRETTa0GZviuPFe7+
	 h/WjnMhYRI5Z7g8VN729djvxifNGdiJb0yaJ7OKFfkeAMeVhtrGjC6dpwVSziRdwLo
	 wgtuuOkfXgRccyRF7z3ugDV5QOkx7ZHnhb+H06JEUt86wXDcpVFt/6vvnYWo0/CqvD
	 TcdaIYKvPoCXreNPrSa1bbxvtNLWHfXS2AHnu5YE4X8SeiDEhg/xQvGbhbRvEHndoG
	 EQIk/NjZ8z1fDTSFZRvTiC3hhZOovtu7DFSXEZnLMpXeT2nzGT0zpc4shBws0iUe0Y
	 HZY4io5gWCCfg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44572383BD6
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 11:10:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654614658; bh=M5bRR5dTBd/T/fXJpCagLpOSePEFn285rnjiH3ITHdo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mfV6gzcKhUPjduI8h2+seCimO9Yx4SsU72zOjL9Hi02SKMczH587eOG+tYuSTYBEk
	 9id4al6SJRFAzLwXvcB7AKaFZc3yZbs/xhp7rTi4n9HoYUVJoxJ395Gv+fBkjW+vDc
	 LnB+38EK8hYgFABMqp2qW+PLCSgRr+mA7MYXJyO6q6mhhxeLm4Wr5uoIocMhsEhXfi
	 KTsPbA/Tg/+UUICkVKNcxq/0RT2zWkrlWO1OUYAKgLRtE7flDmcOI2gfyC1dJCpCte
	 zDQk9jZO9VPaDCgDRLKmYav479cPvo/rltNCMCEHEnH6usGer4zpud1ryCwC2bqAF0
	 Qccghd7z6+ZRQ==
Date: Tue, 7 Jun 2022 15:10:58 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <s95ENBrfQaC8dk4GU9Ja6CFt5ZOOB2Va5j9ObE3G8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=ijVYM_Y_SoeRkTpR9VpREyzX0CWUKtS+-trfvV1w4xpQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: IALTF5XZBX3TE76QP4LQHB5TK6FEDG5L
X-Message-ID-Hash: IALTF5XZBX3TE76QP4LQHB5TK6FEDG5L
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IALTF5XZBX3TE76QP4LQHB5TK6FEDG5L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1888452407542793274=="

This is a multi-part message in MIME format.

--===============1888452407542793274==
Content-Type: multipart/alternative;
 boundary="b1_s95ENBrfQaC8dk4GU9Ja6CFt5ZOOB2Va5j9ObE3G8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_s95ENBrfQaC8dk4GU9Ja6CFt5ZOOB2Va5j9ObE3G8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If it helps at all the exact tune request I=E2=80=99m using is as follows=
:

```
        uhd::tune_request_t tmp;
        tmp.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;
        tmp.rf_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;
        tmp.rf_freq =3D rf_freq;
        tmp.target_freq =3D min_freq;
        tmp.dsp_freq =3D sign * (tmp.target_freq - tmp.rf_freq);


```

I ensure that rf_freq is equal to what my radio is already tuned to, and =
that target_freq is an integer multiple of the master clock offset from r=
f_freq, but still within my 160 MHz bandwidth. Sign is either 1 or -1 dep=
ending on whether I=E2=80=99m making a TX or RX retune request.

--b1_s95ENBrfQaC8dk4GU9Ja6CFt5ZOOB2Va5j9ObE3G8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>If it helps at all the exact tune request I=E2=80=99m using is as foll=
ows:</p><pre><code>        uhd::tune_request_t tmp;
        tmp.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;
        tmp.rf_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;
        tmp.rf_freq =3D rf_freq;
        tmp.target_freq =3D min_freq;
        tmp.dsp_freq =3D sign * (tmp.target_freq - tmp.rf_freq);


<br></code></pre><p>I ensure that rf_freq is equal to what my radio is al=
ready tuned to, and that target_freq is an integer multiple of the master=
 clock offset from rf_freq, but still within my 160 MHz bandwidth. Sign i=
s either 1 or -1 depending on whether I=E2=80=99m making a TX or RX retun=
e request.</p>


--b1_s95ENBrfQaC8dk4GU9Ja6CFt5ZOOB2Va5j9ObE3G8--

--===============1888452407542793274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1888452407542793274==--
