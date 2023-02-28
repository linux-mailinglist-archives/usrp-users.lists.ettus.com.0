Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C976A52E5
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 07:20:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BA3338401D
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 01:20:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677565243; bh=1LeGZLAvagZwXkjCrkfWeV9z7Jp7DkDACOZc0HmCDTU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hOxnnW5H6zpzWclry7i9irGRiMCdaHyZBhiaf4djaUxnnE2j8CpD8V+dSqWJgXxqM
	 3MGG8xFYhvyJf24jX2LKgyuKxHhFWhTotvlk9xiRXZIPS2mOXBFEjLMn0nD2tMI9ut
	 iOhNOnUJMW/QTzZ0fPEFSxhdgGsUjimnN3S3HockR6JtIbHrUVZ6MwAtkv+Mhl8XzB
	 19FxYyowemjnf04w9M15Us5pKMknTReKOj0Hy5P/5KmM5IQGf8cxbQaYGqt7BbnCmw
	 5MQ5kMT+MdfZA8kylSakthp9NRJY1+f2qi+aDJojIROQKIEvh3Ubpk7lJtnv1a4jf6
	 eZBrWAVKmk/5A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9515E38401D
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 01:20:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677565238; bh=7RCjZEcZVIabf86mCsikIs4AZ3s6kzhG1vvkOJyjxtU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=B7SGTmbkmbUfNjWSq2xsXGFs4XtgwdxbZkV9WBTNZ+al+Uac1LE/YF/EC27bqjkdI
	 Vq930XZXGVAsSOLQp/FTxWkpEp21VzMpXeam5i1ZeFgj59iBAQn38mfgz4iHKspO39
	 6iWEWUkrHJ4fPCYc9f1VuR+Jjwbp/4JuX9uop4SZdmFqgEa3WzZy+ZfnbpXrWtUEwJ
	 T4wzJjmU6woF+wKyxRn6T3rILg6+5xMqPdETP8i4cw1y/z/w9FxlOdpI1p8T3g5rUP
	 cdJM5EbBbqyJ/hIBBfxTnaFTquNM6BaOsulyHi36NyfNruM2x62MOeZYFfwE2DHsP4
	 Rd3R536/dISpg==
Date: Tue, 28 Feb 2023 06:20:38 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTv6gHj5n=wJtw8kGnjJwjxh=t3tN5XZse4zBWt1bQrdw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: MEU5DNLW72IYXFLPGVVJOZSXCMMI4AZS
X-Message-ID-Hash: MEU5DNLW72IYXFLPGVVJOZSXCMMI4AZS
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MEU5DNLW72IYXFLPGVVJOZSXCMMI4AZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0130170295192878656=="

This is a multi-part message in MIME format.

--===============0130170295192878656==
Content-Type: multipart/alternative;
 boundary="b1_T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello, again.

I tried with step attenuators and the result is there was difference arou=
nd 2dB between 0 degree and 180 degree rotation of horn without attenuato=
r. When I connected the attenuators to rx and tx paths, the difference ra=
ised around 10dB. When I change step of attenuator, I can decrease differ=
ence at 2, 3dB. But I can=E2=80=99t fix this.

Yes my signal is CW wiothout offset. I tried to shift the center frequenc=
y of receiver. But the result is same. But I discovered something, When I=
 switch the center frequency with 10MHz step, like starting 4GHz to 4.4GH=
z with 10MHz step, there is no difference at 0 and 180 degree of horn in =
some frequencies. And also, If change the antenna location, I can find th=
e location which is no difference at 0 and 180 degree in same frequency l=
ike just 4GHz.

VNA is using swept technique. I know the values are uncalibrated in GNU R=
adio, I don=E2=80=99t care about the actual values at this stage, maybe i=
 can improve the systems in the coming days but not now. Actually, When I=
 rotate the Horn 45 degree in roll-axes, I can see 3dB decrease. In cross=
 position, I mean 90 degree, Values are sensible. I can see the same resu=
lt in VNA at the same degree except 180 degree. That doesn=E2=80=99t make=
 sense.

Thanks for all answers.

--b1_T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello, again.</p><p>I tried with step attenuators and the result is ther=
e was difference around 2dB between 0 degree and 180 degree rotation of hor=
n without attenuator. When I connected the attenuators to rx and tx paths, =
the difference raised around 10dB. When I change step of attenuator, I can =
decrease difference at 2, 3dB. But I can=E2=80=99t fix this.</p><p>Yes my s=
ignal is CW wiothout offset. I tried to shift the center frequency of recei=
ver. But the result is same. But I discovered something, When I switch the =
center frequency with 10MHz step, like starting 4GHz to 4.4GHz with 10MHz s=
tep, there is no difference at 0 and 180 degree of horn in some frequencies=
. And also, If change the antenna location, I can find the location which i=
s no difference at 0 and 180 degree in same frequency like just 4GHz.</p><p=
>VNA is using swept technique. I know the values are uncalibrated in GNU Ra=
dio, I don=E2=80=99t care about the actual values at this stage, maybe i ca=
n improve the systems in the coming days but not now. Actually, When I rota=
te the Horn 45 degree in roll-axes, I can see 3dB decrease. In cross positi=
on, I mean 90 degree, Values are sensible. I can see the same result in VNA=
 at the same degree except 180 degree. That doesn=E2=80=99t make sense.</p>=
<p>Thanks for all answers.</p>

--b1_T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng--

--===============0130170295192878656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0130170295192878656==--
