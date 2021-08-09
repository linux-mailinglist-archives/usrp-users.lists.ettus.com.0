Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F01053E4AF3
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 19:36:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CBED384F36
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 13:36:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UlnQhioH";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 27C293843C9
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 13:35:58 -0400 (EDT)
Received: by mail-ot1-f48.google.com with SMTP id r17-20020a0568302371b0290504f3f418fbso4633942oth.12
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 10:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dsSOwEOCDTxlA7Ov6vyDzLPfo4D1koHkGkZIPp404oY=;
        b=UlnQhioHhWofGw0havFPCxBfIBq1oiC4xRcKkCLfTbhF/FjppQGYYUjhiL981tqw/Z
         jE1zXoeqNw5CjAbyEk8v+RejxR17iGpr+uo5hKhAvIDeK8YU9/tSM1l7r8b+/l3l94CY
         QGlLahnpgL60ir5eDcIkG5fH9vbg30IQcD80rS9P9FvMN8Kj1Z66Zkp6iQ2JaxfRObqW
         +YqXb+mntsiVgEusQJfqKf8Ueo60BT8aRc13PmUrC0IfeKYIfMsy2qP35vbB0zQnCnKi
         kswjCngXOLMAeOknA/0UgKrsI1FbwtAsAoIAKuQcDwm3/dfKYoHLCD3DOOFE8fCNb81U
         A7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dsSOwEOCDTxlA7Ov6vyDzLPfo4D1koHkGkZIPp404oY=;
        b=MoeZqOfDFmpx305jKf6ebkGdj93UnTt9qk0RX2aJG77UHJISkoreQkXgo2BW0swdp1
         FG5inPxT8PVKuPqaI0iq/If26zheWaatcscUmLBT25ZRiUhYhunpEXVnv14+rDa6OlsB
         8hCkPo84KkRzzM2QQDffn2d+/XejZr4yPxnHa3YzjrBk1Jcv3A8ivZvTlnZdDz5pNVBQ
         WTyN3eZHyI2bJuqL+dOBAEcSOZeKYLkJaKV0/smnIClNf4jpx2DLnlAjNjRKLcnBvwqj
         0CsHn9WEhJEmDHTDl83aBKSwo7O/a5QOIxcSiR0KeeCi4w1TX425Mr7pMknCcFNlljAg
         YO9w==
X-Gm-Message-State: AOAM532uHTqgN+J0BJPzCzDFbyteA1deSMueUVinM7C3YhxOshkQpyZ4
	jI5GQub5SiY9zwSzWdAjqQbIadky0lCLTqFiTqQ=
X-Google-Smtp-Source: ABdhPJwN91zG/4Wiq7oiY8SVBmwufJCt7E1LxZEXQWUNj6rL03+c+HsTySagQAv12HbfuKSNmRNiZlBdeNPXBSL7HOE=
X-Received: by 2002:a05:6830:3109:: with SMTP id b9mr18031706ots.276.1628530557539;
 Mon, 09 Aug 2021 10:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com>
 <CAEXYVK5o4sfq-rC4x34Hoq5cP7ahXksBhMdg4rtzp07sGGMWVw@mail.gmail.com> <BN1P110MB01323D8769737F7F320EB88D95F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN1P110MB01323D8769737F7F320EB88D95F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 9 Aug 2021 13:35:46 -0400
Message-ID: <CAEXYVK4=93B2Xef37C0K4+R6yHB=2OKa0VWNkgg4VFjAPqVSuA@mail.gmail.com>
To: "Black, Robert" <RBlack@d16.swri.us>
Message-ID-Hash: RA7FNJR2ORZEASFG45L4ZWUMTBNDQ3KQ
X-Message-ID-Hash: RA7FNJR2ORZEASFG45L4ZWUMTBNDQ3KQ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "rblack@swri.org" <rblack@swri.org>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 RFNoc radio block question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RA7FNJR2ORZEASFG45L4ZWUMTBNDQ3KQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3198272258544517013=="

--===============3198272258544517013==
Content-Type: multipart/alternative; boundary="0000000000006357fb05c923d121"

--0000000000006357fb05c923d121
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 9, 2021 at 1:21 PM Black, Robert <RBlack@d16.swri.us> wrote:

> Brian yes.- The Radio block is permanently running at a permanent 200
> MSamp rate.
>
>
>
> I would actually be useful to be able to change (reduce) the ADC sampling
> clock, with appropriate analog anti-aliasing filtering in front of the
> device. It is too bad that the radio hardware cannot be configured to
> support this.
>

Just curious - why the hesitation on using the DDC block?

The oversampling ratio should actually help you out, unless you have some
really really close-in jammers - but even then would an analog filter help
that much?  The linearity of the ADC should be very good, and digitally
filtering should be superior - yes?  Possibly even get some bit-growth with
digital filtering and decimation?

Brian

>

--0000000000006357fb05c923d121
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Aug 9, 2021 at 1:21 PM Black, Rob=
ert &lt;<a href=3D"mailto:RBlack@d16.swri.us">RBlack@d16.swri.us</a>&gt; wr=
ote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_7218659178059861720WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:rgb(31,73,125)">Brian yes.- The Radio block is permanently run=
ning at a permanent 200 MSamp rate.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:rgb(31,73,125)">I would actually be useful to be able to chang=
e (reduce) the ADC sampling clock, with appropriate analog anti-aliasing fi=
ltering in front of the device. It is too
 bad that the radio hardware cannot be configured to support this.</span></=
p></div></div></blockquote><div><br></div><div>Just curious - why the hesit=
ation on using the DDC block?</div><div><br></div><div>The oversampling rat=
io should actually help you out, unless you have some really really close-i=
n jammers - but even then would an analog filter help that much?=C2=A0 The =
linearity of the ADC should be very good, and digitally filtering should be=
 superior - yes?=C2=A0 Possibly even get some bit-growth with digital filte=
ring and decimation?</div><div><br></div><div>Brian</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_=
7218659178059861720WordSection1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000006357fb05c923d121--

--===============3198272258544517013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3198272258544517013==--
