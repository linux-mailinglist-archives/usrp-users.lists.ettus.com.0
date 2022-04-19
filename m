Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E2D506139
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 03:00:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C33CB384E12
	for <lists+usrp-users@lfdr.de>; Mon, 18 Apr 2022 21:00:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650330050; bh=jqlALG/Dh7Q2mYXFAQe9pXlMeohDPp/HmVEVrRLWdy8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UByMwKuMW/s8l9YU5HCp83AxC2e9xeVAhJjBQoygpIN7AFZhc+cHMa9KKXmyBK/xk
	 rh0Ils+aDt5CbHvOyJPkb0iDo+yPwLelP7B/BOkPSH/me+ViF84mDVD6lYuBclkTBP
	 mUmKmMieMG/AiLmbKfbg5xY/1jykZP1yObScTBdPSM9anOuMneRSfUfHSYgxBiun35
	 Fhh1cPakOpTEkMGDZsaBKOZO9L++H0wSBMBWSrzg0T2/rXpaSzx21/paNcRlK3FtCA
	 P/hmRp5BIzykBhRZBu6fDl7634GLKAl2CcYE3tmDjrp4xxxjA7v/Lurg6wmd2hkUQ5
	 Zlj7dkkkJIPhQ==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 948C7384DA1
	for <usrp-users@lists.ettus.com>; Mon, 18 Apr 2022 20:59:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="1Wkb4Dnu";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id e71so28386595ybf.8
        for <usrp-users@lists.ettus.com>; Mon, 18 Apr 2022 17:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z2XBljiWPXMk0J0m5e9FIALMqOS1qxW4nG553Lp658k=;
        b=1Wkb4DnulWC5zDUoir4TKV+tinVUquOMzgWFosau//Nz8RzldIl6F+w1XoLvUyLGHP
         0gMiG/V37YGidYgTf4QoH+B3maDsllqjIqwLaWQVhD+e25xBLTOH4OZIOeTutKUbf0vP
         P7HyBtV8P7o9U97rX18OS7Ry08JYngfjGd86cH1JIArQtSFU5fI+HJ5XM1hmp2p+bvE5
         p08NKBvXM1yxqmC/3k3wGU3AzPYy3ZJmaUAjwsOa/dev/r2blxwxxUbjZhmxvhY1ybGL
         rhOdzrBlxk2EIFWutABVhN4glCb28jJhMuHRBrqeVptYSOpbLgGRBCcSdg+zWmn9k7iq
         MrEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z2XBljiWPXMk0J0m5e9FIALMqOS1qxW4nG553Lp658k=;
        b=FzeQj6Y3YO/pSaN7ITYemyaFcCl/o9Qa7y/mYLMToZGuYLY7JYsDlPHG6cX7ieTYGf
         HHbVvC6RwrmvAcP4bUTKBoOYfIR3zxjS3GLfJ5Dr05wFbDPM1ru/aEVWXdaotShxSvMP
         wE4nphfBIhRkxkIC30W5fEftkIJYT5htw/CfXjKNAMDcWuCQ3cfhfqx7lGEG15tJmpyM
         ADsvLILOkI6gP3js7RAIielLJUc8B0wzsaG8z/8TxOHYjwcwrUadaH6OFc77Yvb9Fgzh
         x1Tki7sbezaOlYh7Wv3PjStpfBUnbv40WVlz7mpqnBVRxwWquFrrSQU6/nmUJV8HIdHu
         ogNw==
X-Gm-Message-State: AOAM532JfK+bPTxHbkixNvinwzbNExBM/wBEc8Mgzolgdytp5oF8jRud
	2QTG2mg62tAgzHcmhReDleYReTKzix5vGnpj6sGTQE3jCBXZvHmtiyE=
X-Google-Smtp-Source: ABdhPJxGmj/kUQk6HxfVK5/80HrhCwf/9uOmR5PTeQFUjuFJhGfQ3/Frw7O+MA2QSzNGdA6eUpC7jMRYCw4wnizuGD8=
X-Received: by 2002:a5b:ac9:0:b0:641:8ac2:aa5e with SMTP id
 a9-20020a5b0ac9000000b006418ac2aa5emr12853558ybr.50.1650329986892; Mon, 18
 Apr 2022 17:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Ps2J3SrReyU9v2PODR26qeF5NN8AFQ1sSV8zdseSZKZHw@mail.gmail.com>
In-Reply-To: <CAA=S3Ps2J3SrReyU9v2PODR26qeF5NN8AFQ1sSV8zdseSZKZHw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 18 Apr 2022 19:59:31 -0500
Message-ID: <CAFche=hJt3LVhU63kuToBgTiQS20S3sC8A44OK5Or2QtuiLqBw@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: R5VRB345H3ONWF6MIC4IN5WJ76JC2JJC
X-Message-ID-Hash: R5VRB345H3ONWF6MIC4IN5WJ76JC2JJC
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why include a Verilog file not work in the RFNOC block?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R5VRB345H3ONWF6MIC4IN5WJ76JC2JJC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9043248361094626707=="

--===============9043248361094626707==
Content-Type: multipart/alternative; boundary="000000000000a1993f05dcf764e7"

--000000000000a1993f05dcf764e7
Content-Type: text/plain; charset="UTF-8"

Hi sp,

You can include files. It looks like you misspelled "correlate" (the error
says 'corrleate.vh'). Also, if the file is not in the same folder as
rfnoc_block_correlate.v, then you may need to provide a relative path to
the file.

Thanks,

Wade

On Mon, Apr 18, 2022 at 4:56 AM sp h <stackprogramer@gmail.com> wrote:

> Why include a Verilog file not work in the RFNOC block?
> In Verilog, we can include another file in the source Verilog file, but
> when I did in an RFNOC block I faced errors...
> can you any offers?
>
> ERROR: [VRFC 10-3195] cannot open include file 'corrleate.vh'
> [rfnoc/rfnoc/fpga/rfnoc_block_correlate/rfnoc_block_correlate.v:26]
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a1993f05dcf764e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi sp,</div><div><br></div><div>You can include files=
. It looks like you misspelled &quot;correlate&quot; (the error says &#39;c=
orrleate.vh&#39;). Also, if the file is not in the same folder as=20
rfnoc_block_correlate.v, then you may need to provide a relative path to th=
e file.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br><=
/div><div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Apr 18, 2022 at 4:56 AM sp h &lt;<a href=3D"mailto:=
stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Why incl=
ude a Verilog file not work in the RFNOC block?<br><div>In Verilog, we can =
include another file in the source Verilog file, but when I did in an RFNOC=
 block I faced=C2=A0errors...</div><div>can you any offers?</div><div><br><=
/div><div>ERROR: [VRFC 10-3195] cannot open include file &#39;corrleate.vh&=
#39; [rfnoc/rfnoc/fpga/rfnoc_block_correlate/rfnoc_block_correlate.v:26]<br=
></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a1993f05dcf764e7--

--===============9043248361094626707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9043248361094626707==--
