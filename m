Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BE7851F81
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 22:23:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B86DA384DCC
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 16:23:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707773010; bh=PTycuPyIOos8oSSWMOFsP9Ubxp/oja9U8dW/upiac5Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DWpUr7rZtx0RaicdHVu9q+bnh/ZVer0kI76S+1SPnK/J89qCTqTQswL+38pfBg6Cj
	 51HmDTnaxfseqoNAQhuLqRBcHK9jCJXNtsV9UzbuzyZh2hDVK6KcvU1hRitsNcfk1O
	 ALOiyzihvhltjzjx3ACBIq4jDTz56AnmhfcRmWAdxFbpUC3fwmWebV3x4JiH7wrmy0
	 8ET66YkH8rLlWKEKMUXriU9Ftjk0hHK006a4Hg2aTz0t3GkhAkKNC33srKOWyKchLz
	 B+DRe2jcbVbuEpI/pYatBEFR3BgEW1EPAhZDiL77a+rUsdd/1Bcm9izO0w3Sfn/0CJ
	 O5eSsLjogJ81A==
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 44C34384D3C
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 16:22:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YKozohTk";
	dkim-atps=neutral
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2cf1fd1cc5bso46303071fa.3
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 13:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707772969; x=1708377769; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=spg23sD4NNwOtUbK0OXPdHid4CQdZGGgt3xm5/o7Y1c=;
        b=YKozohTkLylxNyLpUGiWpV5GLg5ZeDZqH5cNQs4DL/H/V0LBlpPUTdUU2fkxaTAwsf
         wJw0IbS7fP7CvBvKCJLAPav6RAe2b+gMy4wM867OIf+DY2IqrTHVU+LC5vbAUTqvKiBG
         D6LidNlw47EVb/VxNw1wJp1pAKL7cnFHMGbCS1DWhvoW5wZbYaomRp8OtjgIyTOnZpIJ
         DsMkQ+ma/X0LrkQIZ41bYy57dYA8lczOagQ+73LGKQv7CsjngjiFs/f7jgBYUAG/yuKr
         aAmo4XUBBEgORQsrQqgIYa8/sHWUCgjmNSqa24rvdaPc7J4HQMOvvOQ80gv7SAFPfQBG
         t0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707772969; x=1708377769;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=spg23sD4NNwOtUbK0OXPdHid4CQdZGGgt3xm5/o7Y1c=;
        b=W6rW9RkEU/bsaTg/KJ0QLg+zveJ1BZcrRS5GBKX9YnLU6t/L+0D8wZQn/okLYIij2k
         6HV54JKVTcq4yW9vaKg3B7fodJX4oklXWVR3dlG9hr4o/roCSGaH8QYn37qlGVT80WK7
         hohEgq/SIYmwBuXtoeP5sa2wo37LezSq6nEiW3KgtYGz1XWEHmXWUauAIfhs72oJb4xm
         JFi7x6+Dxi8MCmknxbfwQxcmnfrlOu+ISYQxYkSD9hwje14fQMta5JdwesT/h/DFVQei
         gAyYUidiZP1kVoZWAQZUIGjxLxIHidKzE++Yx1lPOhh53UygDJ3Wd7bWOzOzOowQlcxp
         oIKQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0fV13t2KlIHgGZNF8kAPHYIKfPmNRgJee5/cs0nPtV9kGY2DIVcNjE7NPl6nBc8zdbWeR4q+ezQpzBBYlqWdmagV860LDrowYOw==
X-Gm-Message-State: AOJu0Yz2/+upI7og7N4lnJ0EsZqnJOy2ShVn+pDI9/loQdAvBoDMDkJU
	g5WLjNENB/LW0E9L4xR0MBX9Z75mBE8629+gD1tyTU5oyxQSMgPMzyVTvmt31i6hSqSZP/7FpdK
	ywYfaIrqVN5P0gcQPa04Ds0I31HU=
X-Google-Smtp-Source: AGHT+IGrLl0mCxTWdTZR9p5lVElutBQzvrDPaz7jC+2ypThAQuqlBxFwnkdKPw984Dfm1IbMXuhAhiYZLVUCqw2Oj7I=
X-Received: by 2002:ac2:46c9:0:b0:511:86c0:dad2 with SMTP id
 p9-20020ac246c9000000b0051186c0dad2mr3834759lfo.62.1707772968544; Mon, 12 Feb
 2024 13:22:48 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
 <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com>
 <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com> <CAKHaR3m81BUmSvJbh-Z3Ob6havhcq8+JNvZc=Q5sTna1_WeV1Q@mail.gmail.com>
In-Reply-To: <CAKHaR3m81BUmSvJbh-Z3Ob6havhcq8+JNvZc=Q5sTna1_WeV1Q@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 12 Feb 2024 16:22:37 -0500
Message-ID: <CAEXYVK76sqhOR2cfyKW8gsVGxaC0y238HWsLPEA41yt5dQc6KA@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: GTUIN6W47MNGJENDEVUMFTIYEKD6KQW5
X-Message-ID-Hash: GTUIN6W47MNGJENDEVUMFTIYEKD6KQW5
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gaytanc4@gmail.com, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GTUIN6W47MNGJENDEVUMFTIYEKD6KQW5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5098661780977490108=="

--===============5098661780977490108==
Content-Type: multipart/alternative; boundary="00000000000025aff3061135e11a"

--00000000000025aff3061135e11a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 4:13=E2=80=AFPM Dario Pennisi <dario@iptronix.com> =
wrote:

> Hi Brian,
> The issue with not using gr-ettus is the lack of rfnocmodtool which is
> very handy. Also, it is my understanding that unless you move to gnuradio
> 3.10 even with uhd4.6 you still need gr-ettus. Am I wrong?
>

You're right that the rfnocmodtool is not available with the current
software, but you are mistaken that you need gr-ettus.  The RFNoC blocks
have been pulled into gr-uhd in GNU Radio:


https://github.com/gnuradio/gnuradio/tree/fe048a9874d2604d48d396d2b39925a0c=
f2c3c70/gr-uhd/grc

The alternative to the rfnocmodtool is to use this verilog generator code
which is described here:


https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Your_Ow=
n_RFNoC_Block

Specifically, you write the yml file which describes your block then you
invoke:

     $ python3 <repo>/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c
~/rfnoc-demo/blocks/demo.yml -d ~/rfnoc-demo/fpga/rfnoc_block_demo

This sets up the shell and other interfaces as per their definition in the
block yml file.

Hope this helps.

Brian

>

--00000000000025aff3061135e11a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Feb 12, 2024 at 4:13=E2=80=AFPM D=
ario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com">dario@iptronix.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto"><div>Hi Brian,</div><div dir=3D"=
auto">The issue with not using gr-ettus is the lack of rfnocmodtool which i=
s very handy. Also, it is my understanding that unless you move to gnuradio=
 3.10 even with uhd4.6 you still need gr-ettus. Am I wrong?</div></div></bl=
ockquote><div><br></div><div>You&#39;re right that the rfnocmodtool=C2=A0is=
 not available with the current software, but you are mistaken that you nee=
d gr-ettus.=C2=A0 The RFNoC blocks have been pulled into gr-uhd in GNU Radi=
o:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/gnura=
dio/gnuradio/tree/fe048a9874d2604d48d396d2b39925a0cf2c3c70/gr-uhd/grc">http=
s://github.com/gnuradio/gnuradio/tree/fe048a9874d2604d48d396d2b39925a0cf2c3=
c70/gr-uhd/grc</a></div><div><br></div><div>The alternative to the rfnocmod=
tool=C2=A0is to use this verilog generator code which is described here:</d=
iv><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://kb.ettus.com/Getting_=
Started_with_RFNoC_in_UHD_4.0#Creating_Your_Own_RFNoC_Block">https://kb.ett=
us.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Your_Own_RFNoC_Block<=
/a></div><div><br></div><div>Specifically, you write the yml file which des=
cribes your block then you invoke:</div><div><br></div><div>=C2=A0 =C2=A0 =
=C2=A0$ python3 &lt;repo&gt;/host/utils/rfnoc_blocktool/rfnoc_create_verilo=
g.py -c ~/rfnoc-demo/blocks/demo.yml -d ~/rfnoc-demo/fpga/rfnoc_block_demo<=
/div><div><br></div><div>This sets up the shell and other interfaces as per=
 their definition in the block yml file.</div><div><br></div><div>Hope this=
 helps.</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--00000000000025aff3061135e11a--

--===============5098661780977490108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5098661780977490108==--
