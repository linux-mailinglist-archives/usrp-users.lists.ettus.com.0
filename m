Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A81E56AFD69
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 04:31:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3241938511E
	for <lists+usrp-users@lfdr.de>; Tue,  7 Mar 2023 22:31:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678246298; bh=jYF0la7cukX1KYBU6pEnD8/tTVabKiyrvmkPPYZYKKI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Kul/p/+Yp+4Ubc8DA7+OLBDo3RwuDVgLzMsVUHFyC/A4u+4r5XB0kEScQJ72ivs/l
	 fHANrM9ZB3iUFf8saXrCGOuyM6a04ixWK3s9dK+4HkDtjisctuhCEp9Vl5uUNoiiwu
	 5PYvsqUWI/LB9lHSrfKf4/XeDKEuC2AwQHUIUZSVlDC7pDIwbReqUY+eh+g17h2eqb
	 0qZV2ool6+wieYqvWW+rP/WEo/6nrbbASdMDF/h9BNn4WC4EVfzry84ssHIepxZffz
	 K83KCypc9aoMuXYiOSMPQRbIVroS53UvA24sBF9iJEHIN9DDyMMTS+e36qP75pQJSj
	 w/UWccXLBwhUw==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 498D4385065
	for <usrp-users@lists.ettus.com>; Tue,  7 Mar 2023 22:31:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="OGKYBgXD";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id u9so60680878edd.2
        for <usrp-users@lists.ettus.com>; Tue, 07 Mar 2023 19:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1678246261;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X8EeufWX0IuOmAziCuLYKJraqGvt+F2s5Yzry/feO1w=;
        b=OGKYBgXDeY2Ru7v1XjmgOTVA8kS3XmQmy8wiwmg5kurqB0Q+OSn4Nt98bcHtewzXfu
         BLsejiJ3VR5ZHomxFGot3v+v/L7jEKiidFMFwixssGibAYeNdqKdV8ooiBooUonp9NlR
         SLJ75cpdt6WFHyT1myiA/ogoDbm0ta79Fj/KWny+nLoaSnVBMsuIk+oEJr7DSlKJ7hSS
         /y0jQ3/Lmv//KQRuF8T56WBSZdSy9X0JWCz+1UNPJNfu8Vbw+4HG0ykJhwaybW6Artue
         E9NqKzLIeZWXdD/EFH9srqNoEzm8zm0KGEbcOG2ahJR/tArR8UhvBKFdFYvt6uWk9rTA
         wJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678246261;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X8EeufWX0IuOmAziCuLYKJraqGvt+F2s5Yzry/feO1w=;
        b=wwzcDW0Tcjq5kplZmNWuGj+1HTfBlrqR8eQ0WYQ7ydR6BbWUlCJzt8iXyTLIzE8nfd
         PIfqspDNA1VjZjmzQeEK7Fi8IEKQG8Pma0ZumNkGtozIkgDio/WA19lBhsX6hi6g9nGr
         POjHnFyG/kLgnFUlKSG3qvwZ9MPgqDbWqYBrNCxJHZONSETISQ+vq/yqRpZ0nrG0rHst
         Cwa0sf5xM4sno6+GYjH7BLUaqsUV+9w52mx8bg6cfG558kUAsBwcxPMOvBzLVQhGjEL7
         8KbtCrWY1L7vOhzVQiafZXo8cqgFITcQtXVOwoyl0/hT5DRFspnIHVUNpMo2DC7HODyY
         sumg==
X-Gm-Message-State: AO0yUKWLIMHamTlnvjXfdPX7kEsFQpbRhuYZCMWyagICVFf7qWi1s2Gz
	bzBUg8ToR81abS7LHUQU66ZqeR15aP00SiV2DsDZ/sNDRUk4TCCmP5k=
X-Google-Smtp-Source: AK7set/tbg8pVDlrW5p3Gzk44r0w5eP2whElwtfcesrdmuJisZHYKqw+925X76A9u2cDU8l2Ql4zjrydV2VxAj6D4wY=
X-Received: by 2002:a17:906:128e:b0:8b1:7ac3:85cd with SMTP id
 k14-20020a170906128e00b008b17ac385cdmr7744656ejb.8.1678246261068; Tue, 07 Mar
 2023 19:31:01 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
In-Reply-To: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 7 Mar 2023 21:30:41 -0600
Message-ID: <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>
Message-ID-Hash: JCQ5ESTRUZSTKXIQT5BO4ILHJ75TTWIY
X-Message-ID-Hash: JCQ5ESTRUZSTKXIQT5BO4ILHJ75TTWIY
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JCQ5ESTRUZSTKXIQT5BO4ILHJ75TTWIY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7700858247089909242=="

--===============7700858247089909242==
Content-Type: multipart/alternative; boundary="0000000000003cb54d05f65b2851"

--0000000000003cb54d05f65b2851
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You could swap the bytes in your block, or swap them in software on the
host. The data gets rearranged by the streamer depending on the data type
configured (e.g., sc16) and the endianness of the host machine.

Wade

On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via USRP=
-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> We are developing an RFNOC module that takes I/Q data, and turns that int=
o
> two 8 bit values.
> I have a test program that sends data to the RFNOC module, and receives
> the modified data.
>
> The RFNOC module treats the two 8 bit values as one signed 16 bit value.
> When I read the data from the test program, I get it in the wrong order:
>
> Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
> Receive: Val1 Val0 Val3 Val2
>
> Does anyone have any idea how to fix the order of the received values?
>
> Regards,
>
> Bas Vermeulen
>
> ------------------------------
>
>
>
> CONFIDENTIALITY NOTICE: This message (including any attachments) may
> contain Molex confidential information, protected by law. If this message
> is confidential, forwarding it to individuals, other than those with a ne=
ed
> to know, without the permission of the sender, is prohibited.
>
> This message is also intended for a specific individual. If you are not
> the intended recipient, you should delete this message and are hereby
> notified that any disclosure, copying, or distribution of this message or
> taking of any action based upon it, is strictly prohibited.
>
> English | Chinese | Japanese
> www.molex.com/confidentiality.html
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003cb54d05f65b2851
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You could swap the bytes in your block, or swap them in so=
ftware on the host. The=C2=A0data gets rearranged by the streamer depending=
 on the data type configured (e.g., sc16) and the endianness of the host ma=
chine.<div><br></div><div>Wade</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM =
Vermeulen, Bas (Consultant) via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-7622960363536=
940359">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
We are developing an RFNOC module that takes I/Q data, and turns that into =
two 8 bit values.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I have a test program that sends data to the RFNOC module, and receives the=
 modified data.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The RFNOC module treats the two 8 bit values as one signed 16 bit value.</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
When I read the data from the test program, I get it in the wrong order:<br=
>
<br>
Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3 <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Receive: Val1 Val0 Val3 Val2</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Does anyone have any idea how to fix the order of the received values?</div=
>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Bas Vermeulen<br>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
<br>
<br>
CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the
 sender, is prohibited.<br>
<br>
This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly
 prohibited.<br>
<br>
English | Chinese | Japanese<br>
<a href=3D"http://www.molex.com/confidentiality.html" target=3D"_blank">www=
.molex.com/confidentiality.html</a><br>
</font>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000003cb54d05f65b2851--

--===============7700858247089909242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7700858247089909242==--
