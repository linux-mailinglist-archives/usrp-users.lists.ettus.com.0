Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5F054DE74
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 11:51:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E38738461C
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 05:51:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655373116; bh=0UqsqUTYTBYmi+VCcH9HS6PMRIoeWtvmj6x5qWq7L88=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ksltv9ofDMlERWIizA7xccV2Dbv43aU3pHNepvigkbhKWYilUmNuGUG7ezEr6N2xm
	 27LrJKYWxU+ouc5hrkHVyOjnHxGhOxcjr5YJ/7taSHDj3ithFaLI0g+qeWpk4X50VI
	 lH+nnPaVGpsKOmJZJqpDFvubnwUWAunFGqX+w1FoCo21kS0hJNNA3CsNzAqngmLOoX
	 jH+XbHk1NFPfCkGd1syyNtSbkQvbNcSt+rFyL+uRJUHkV8yI2l750BfWx59XcdXDUh
	 wxb5UGmxsuvgXy7vRM8xbyi4B4wCS0vClszJflIkcNkzfSzBCLAgLIjYYLFAu7dlHS
	 LV+870gasM9KA==
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 74AEA384496
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 05:50:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I51u1mss";
	dkim-atps=neutral
Received: by mail-yb1-f172.google.com with SMTP id 23so1281409ybe.8
        for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 02:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Of9rzD7TBoXoovdrF802jjRy+qqQ4SPeZak/bMsz0MI=;
        b=I51u1mss1S80+ylHyfzf2mUbepFIvftBVYITvmGQI/8ipI6QJ+ZbBFWJvcHIfUsbaH
         kCEeZlCaP+Oh/G2jYE3fZ8dlpBHRYAr+FTw+rUfZtIfpvbRDad2SKKxIhyVd1I2QvaZm
         gmKvuE9bVR3Dz0QY4AqnTfwdOf9S4WJ7DsiCNlAXtiPq5el/s9Cb4EVulw1waUoyePU9
         OSOuTRGgnZZ40ZM+dbUicAsY6tS3S08SW2tdpAFnQenXyDkgjUGmswXD3H7JgBb6OeQ9
         BfWh8Ql1szEqQ7+ZuI1wlCjg9ucfFU9cOGt2VRGFHUdyrTg58Xr61JnP3Y9RvXOz6UC9
         dUIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Of9rzD7TBoXoovdrF802jjRy+qqQ4SPeZak/bMsz0MI=;
        b=UdzafrG9rspWK5oHrR+0j2B6Mc0WI4Vae4/FvCdoM9j8u2EVCIWoJKhU7Mwz/joRPn
         wAk6ZVWb0FVPe7pwqi74ms+5RO2llXOanywSTO1avsggktCynJ947G7U5DdVcdEKBA59
         x6XtpvHA7UtfcDc840GctopTx8LPhrOo3ppAPDLtDuKNhn697scGJwNEp84wnxdws1Hm
         27fe1BZ2VFVIlSxq97BhifctMZ0EtlszlxkUo0ygNXWFDAiAHUReypqrBNF36LsRci/R
         LpdTVq4uj1fnJ9m3A4sgFyBJbwGWtxUTCztkoq9PaLwclcK99vJiSNQ1IELu2+/2PUGg
         urxQ==
X-Gm-Message-State: AJIora8jyROj4Kh9zDvgznNqwHd8dD3VgINENa2itoPMy/BxMvTaahU5
	cS1/vRhCbN7vDNJTBSFMo+qtx3w8QswFRy1VqrsSo3yY+/V5DjLZ
X-Google-Smtp-Source: AGRyM1uV50GFTiW4iOyeOlhI6JslA3kZ5QhZ0kGFvZeTwGAMvYITh0e0Z9WDRdhLCpvs4/dre5ER7mc1PzUC0Hjvz8I=
X-Received: by 2002:a05:6902:114c:b0:641:87a7:da90 with SMTP id
 p12-20020a056902114c00b0064187a7da90mr4430808ybu.561.1655373042910; Thu, 16
 Jun 2022 02:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Pt6kf=hep=6QguqVka-sqZLgJjABTtxTfAk9_pOziLoFQ@mail.gmail.com>
In-Reply-To: <CAA=S3Pt6kf=hep=6QguqVka-sqZLgJjABTtxTfAk9_pOziLoFQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Thu, 16 Jun 2022 14:20:31 +0430
Message-ID: <CAA=S3PszO8rk7CvU3jw6bgDoY=QcrbAL19kJ1gOWHHp8g90mHA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: D64GTPLCUUOFQGMA3VNLEYFSW5HQMA5D
X-Message-ID-Hash: D64GTPLCUUOFQGMA3VNLEYFSW5HQMA5D
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When I added ce clock domain to RFNOC gain block and I synthesized it, in Gnuradio it generates OOOO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D64GTPLCUUOFQGMA3VNLEYFSW5HQMA5D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0081527802570415068=="

--===============0081527802570415068==
Content-Type: multipart/alternative; boundary="000000000000318a9605e18d9215"

--000000000000318a9605e18d9215
Content-Type: text/plain; charset="UTF-8"

I examine all of the code again and again but my problem is not solved
yet...
any RFNOC  developer can not guide me?
thanks in advance

On Tue, Jun 14, 2022 at 11:21 AM sp h <stackprogramer@gmail.com> wrote:

> When I added ce clock domain to gain block and synthesized it, in Gnuradio
> it generates OOOO
> I attached my source code in below, can anyone guide me?  I emphasize that
> I read the RFNOC FFT and replay blocks and according to them, I added ce
> clocks...
> FFT and replay block work successfully but for the gain block, it does not
> work ....Any idea? any offer?
> Thanks in advance
>

--000000000000318a9605e18d9215
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I examine all of the code again and again but my problem i=
s not solved yet...<div>any=C2=A0RFNOC=C2=A0=C2=A0developer can not guide m=
e?</div><div>thanks in advance</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 14, 2022 at 11:21 AM sp h &=
lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">When I added ce clock domain to gain block and synthesized it,=
 in Gnuradio it generates OOOO<br><div>I attached my source code in below, =
can anyone guide me?=C2=A0 I emphasize that I read the RFNOC FFT and replay=
 blocks and according to them, I added ce clocks...</div><div>FFT and repla=
y block work successfully but for the gain block, it does not work ....Any =
idea? any offer?</div><div>Thanks in advance</div></div>
</blockquote></div>

--000000000000318a9605e18d9215--

--===============0081527802570415068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0081527802570415068==--
