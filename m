Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGAILrfHDGrAlwUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 19 May 2026 22:27:35 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E80E4584AE0
	for <lists+usrp-users@lfdr.de>; Tue, 19 May 2026 22:27:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 936D7385F58
	for <lists+usrp-users@lfdr.de>; Tue, 19 May 2026 16:27:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1779222453; bh=4+DIEs6etlJzpuh+SYMtaaPg+RFIv/e4M7AOjBDL70s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=E6uJ7b0KXfDirYTdbG5KX5MM1dJ9a+Sf+hNNZCev7xYV3uhcolrxnADAVETg1JdOx
	 SdFL533IhV883vBgZ+TuiAYBmCN9uJLhr7Ry5/9SDOtmDT74855tY1tuNHmsJAUd0/
	 wlM9+Vefzmuz0g2rxywwn2HBPwpRGynY9Wsn0FH8CoL9fyXCf16W4y67peyQ/LrXXE
	 4WihBm9nck9IkJ0u3OAdSmDlvgidvBGpzXF8DxasNUrksVI2O/ELRap5jUyNpyx923
	 FtzSfCb3ZuZS83bW76Aj713+f665F6IRViM5qPe1QcADsc6rUwHaA0Tp1pO5mi/5Al
	 vYt+6yrtFXi3Q==
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F750385EEF
	for <usrp-users@lists.ettus.com>; Tue, 19 May 2026 16:27:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20251104.gappssmtp.com header.i=@ettus-com.20251104.gappssmtp.com header.b="Izk8L64Y";
	dkim-atps=neutral
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-65c24be9e4bso4308041d50.1
        for <usrp-users@lists.ettus.com>; Tue, 19 May 2026 13:27:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779222432; cv=none;
        d=google.com; s=arc-20240605;
        b=JqAqV0tvbrixR9pyhlsEC32ykGuZkesHUMv7MfjMnY1yj/XDSPdfupr9tWUOcEVq2/
         CLIWRD/otjhyawdTeE28HgsEMk/6f3jSOKS8oyOtBz+mZRw638uv+OAT+dMQdrBipsty
         938YZnXdd70IWG9GeyRjoLNTooNADmuQ2vSS2xgBThEsbDNC4vv/0vkmKcSGJCvEaN+Z
         Wdi1BGqKKO7d9t8pfLyOW6PSkFPpSRZ9JxrX1NISRZV/IbaWcUMHtdTHzpNMivmAl9ER
         4VltCkBjpT6Ax5tTRPw/QVR6bgkC7E+1/ESoMn+sEmtx1SYqR7Iy9YHaq4bKU3MlEuIn
         YRww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xiAf5IOAhYigRfOE0iStDw6C4B8yeuNAPEkdDOCZSCA=;
        fh=eFOEXq/FBBPAWkAldIlflP6ZP6yh0xIbWs7iCeBYTF4=;
        b=aBBEq3OKmVDNkzqvPKEFaaxUtSHRj0UrRPCaPPHXZL3yFJQkYsGqcf0BFQdkNSaKiZ
         wUFB9zpks9OuKrTx8NhO6CSZufEccROF9RFdJiyfz/WyhDt/Ca8QCjfAR1Igw3kkwUOi
         ZNSP3F8mpDu/9a16Aa/RWn4LK/mqw+7UJLce7Wqpkeo4MsSSkTwaVwfReWYLq82+ykQc
         xIh/rRHeD2acLMhaf/dinrmDgAAhfMutJbCjzhdLMkUfE1W7B1g1hPxRLt0kKHpT2VfH
         W+34qKLRuu67KKoxQ6SG6zeqO4GOfHoPEoDg26G/HkHBtOess66hTGYNciZf8EvkFiF7
         I01g==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1779222432; x=1779827232; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xiAf5IOAhYigRfOE0iStDw6C4B8yeuNAPEkdDOCZSCA=;
        b=Izk8L64Y3F2fm9hspZmdNot4QKEuhsorL1sERKTzZb6JnsbgELOL2DSczX67lgoEOf
         LphUF7hie/5LjfMVyPVrBOfMvRzoR5dNtkca0I3Q7HDrLqH3zog5aQRI84Vx2cikLL+M
         5L3Na613LS5Oye5Brsv590+7LVn+qAgQg83zRZ77mNR2ugn9SEUmHFXsooAnA70x3/qj
         TxoSXz3JDlwp4/xNusDhlM1wQ0AQguIKSzNPggkrqnyDvvWStL8nlMmTugQMibib6Ic1
         WRp498LpFKuc8M9FznYT2jF0kb2a9wM0I1k0+praaHBbnpG6tducchWHZd2MFmKsJfMN
         vLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779222432; x=1779827232;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiAf5IOAhYigRfOE0iStDw6C4B8yeuNAPEkdDOCZSCA=;
        b=nieyXnPU74lk9PrirAjLgOjAiNGdDOU7Ww+PllFJrHYV+40QUTyonyNHpZlD5SkTAb
         HC8A6/l8xXugqm+3FZo4HCnHXNTkY354zokzIwJz/L3Fjaf/63a9zgXJHicnTxSTNZYI
         cDChvd5acmbTZ99wtH30BEx5N68L4WRW0zGLicqxlYyqIYOHK3I0XzOknQPyC3wHjTeM
         lj+Vtgw/e+KaOMGgYgLYR1afYJLekZg5pJNydLIKWpYKoradkk1iQHIKLVVAJ+9J42DJ
         pcZZj4lBKl92RIuEUEXtxkT8Dz/YIrWAVRTCSCvHRyXrr4ZxlFHG9CF16KNC86ZHW2Hc
         h4Gw==
X-Gm-Message-State: AOJu0YyF+HpKBQbDTVnGHqf8p/tSTZK0ANh53QEVxszeU5h2WWdLaZhy
	WDLIcZRu6XD6nnZgtS5NQy9pVO6X1ZxJ00jgKTB9tyIiCD30nnnGcgwF4lJIUGwkd7KkfV7GCIA
	+UvnuGCBqkrCEqzoafzsWf1bVvcT3v2ibYgxpRb/yWmDb
X-Gm-Gg: Acq92OHSrMxwH6A9cLolCXNWBE6S12GWKuv2a2EODt2diI1uFrjgOrpSkqDAib18zc7
	TwR5M3feL1lN4nw2/2FIOVSkPnaYBEes/l/11+KSNpenkdCBr3LnLi1/xCu+C5/yE5XcKh4HV07
	9q2x7QFYHhiY7Qac/WKy889VUJSy/1WMOdd+idI8RgLRSGnbBG+ROrygrooaZa2aWBQygU9A5FM
	RBMqVXUZjBguwWex+M+Pal4Utcim1nQokXoT7cgIL8w/GL9VjjTjTmcdbqfkyuInTVc/27d1i8G
	ypeE
X-Received: by 2002:a05:690e:1516:b0:65d:7ffc:bcdd with SMTP id
 956f58d0204a3-65e226f5da8mr16629745d50.25.1779222432435; Tue, 19 May 2026
 13:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <XKAyxVytRClYEJlSSBpskOSbVd8IEmWGiHeTKgmQ1M@lists.ettus.com>
In-Reply-To: <XKAyxVytRClYEJlSSBpskOSbVd8IEmWGiHeTKgmQ1M@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 19 May 2026 15:26:56 -0500
X-Gm-Features: AVHnY4IScNtrGY_M-MPWEcm74mqSFBcIa4nn47Z4_E2iFVbHa7JAwL2U-_5WQ84
Message-ID: <CAFche=gy_dYA0EeGuuSB=onHMZcb5uBfSN21KHOd-b0HjD9pEg@mail.gmail.com>
To: eunsung.son@emerson.com
Message-ID-Hash: AO46QZE6LEYIEEQYTLNBI32DMYRGSGED
X-Message-ID-Hash: AO46QZE6LEYIEEQYTLNBI32DMYRGSGED
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about RFNoC DRAM Helper in UHD 4.10 on X410 UC_200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AO46QZE6LEYIEEQYTLNBI32DMYRGSGED/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0985676341792902549=="
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email]
X-Rspamd-Queue-Id: E80E4584AE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============0985676341792902549==
Content-Type: multipart/alternative; boundary="0000000000000fdb1b06523181f8"

--0000000000000fdb1b06523181f8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

1. I can confirm that this file isn't being installed with UHD. I don't
know why not. I think copying it over is fine if you're trying to compile
against it.

2. It sounds like you're using an FPGA that is too old for this feature.
Have you downloaded the latest FPGA images for UHD 4.10? You should be able
to download the latest using the uhd_images_downloader utility.

Wade

On Thu, May 14, 2026 at 5:52=E2=80=AFAM eunsung.son--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
> I have two questions.
>
>    1.
>
>    I would like to ask whether it is expected that the dram folder is not
>    included under the following RFNoC include path after installing the U=
HD
>    4.10 release version:
>
>    C:\Program Files\UHD\include\uhd\rfnoc\dram
>
>    However, I can see the dram folder in the UHD 4.10 source code, so I
>    copied it from the source code into the installed UHD include folder. =
Is it
>    okay to use it this way?
>    2.
>
>    I am using an X410 with the UC_200 FPGA image, connected to a Windows
>    host PC. The UHD version on the X410 is shown below:
>    [INFO] [UHD] linux; GNU C++ version 11.5.0; Boost_107800;
>    UHD_4.10.0.0-0-g2af4ddb9
>
>    After applying the workaround described in question 1, I used the
>    upload function in dram_helper.hpp to upload a recorded file from the =
host
>    PC to DRAM in order to improve the transfer speed.
>
>    After running the program, I encountered the following error message:
>
>    [18:35:52] [ERROR] [XPORT::TX_DATA_XPORT] Requested 'stop on sequence
>    error' stream mode but FPGA does not report that this mode is enabled.
>    Please check whether the FPGA image supports this mode.
>
>    [18:35:53] ERROR: RuntimeError: Requested 'stop on sequence error'
>    stream mode but FPGA does not report that this mode is enabled. Please
>    check whether the FPGA image supports this mode.
>
>    Do I need to modify the FPGA image to resolve this issue? Or is there
>    another way to fix it?
>
>
>
> Thank you.
>
>
>
> Best regards,
>
> Eunsung
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000fdb1b06523181f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>1. I can confirm that this file isn&#39;t being insta=
lled with UHD. I don&#39;t know why not. I think copying it over is fine if=
 you&#39;re trying to compile against it.=C2=A0</div><div><br></div><div>2.=
 It sounds like you&#39;re using an FPGA that is too old for this feature. =
Have you downloaded the latest FPGA images for UHD 4.10? You should be able=
 to download the latest using the uhd_images_downloader utility.</div><div>=
<br></div><div>Wade</div></div><br><div class=3D"gmail_quote gmail_quote_co=
ntainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2026 at 5:52=
=E2=80=AFAM eunsung.son--- via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p><br></p><p>I hav=
e two questions.</p><ol><li><p>I would like to ask whether it is expected t=
hat the dram folder is not included under the following RFNoC include path =
after installing the UHD 4.10 release version:</p><p>C:\Program Files\UHD\i=
nclude\uhd\rfnoc\dram</p><p>However, I can see the dram folder in the UHD 4=
.10 source code, so I copied it from the source code into the installed UHD=
 include folder. Is it okay to use it this way?</p></li><li><p>I am using a=
n X410 with the UC_200 FPGA image, connected to a Windows host PC. The UHD =
version on the X410 is shown below:<br>[INFO] [UHD] linux; GNU C++ version =
11.5.0; Boost_107800; UHD_4.10.0.0-0-g2af4ddb9</p><p>After applying the wor=
karound described in question 1, I used the upload function in dram_helper.=
hpp to upload a recorded file from the host PC to DRAM in order to improve =
the transfer speed.</p><p>After running the program, I encountered the foll=
owing error message:</p><p>[18:35:52] [ERROR] [XPORT::TX_DATA_XPORT] Reques=
ted &#39;stop on sequence error&#39; stream mode but FPGA does not report t=
hat this mode is enabled. Please check whether the FPGA image supports this=
 mode.</p><p>[18:35:53] ERROR: RuntimeError: Requested &#39;stop on sequenc=
e error&#39; stream mode but FPGA does not report that this mode is enabled=
. Please check whether the FPGA image supports this mode.</p><p>Do I need t=
o modify the FPGA image to resolve this issue? Or is there another way to f=
ix it?</p></li></ol><p>=C2=A0</p><p>Thank you.</p><p>=C2=A0</p><p>Best rega=
rds,</p><p>Eunsung</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000fdb1b06523181f8--

--===============0985676341792902549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0985676341792902549==--
