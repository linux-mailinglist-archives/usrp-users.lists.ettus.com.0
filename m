Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BD04B1706
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 21:38:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9586C384232
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 15:37:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="IoHotOMg";
	dkim-atps=neutral
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B412384222
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 15:37:03 -0500 (EST)
Received: by mail-yb1-f171.google.com with SMTP id y129so18974208ybe.7
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 12:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uP8cw5QpBNPd5JqWOMiFqaUS8EWJ44DDjB6xlGduAR0=;
        b=IoHotOMgiuNwEGkBrimw8xPMbi9vNWRfPJ47GQU0nUQtZmIhHUYnO0GLVFedakKCTe
         wiWHG7bZF9lox+qIgwKXo+MYYvWonu2Im9HrjVnVDs6NtgDjdYYmGZyu31Uj7lbnE8cU
         2Axud21sw8AhAfn/iLZiDIBxZqS6RvvRMulNbFvCIkOP7KbBo8Fr7Y0wIwFxZNulMvpc
         KViUQPsN1pfG0vanT5xkzhhrFip6WHzL8sWTHhxy1ZcdhJG2yZm64iXwStHvP6/blrxz
         KWXtakNMmLWI+sZMtOKaIFJZbytNJ/+Q+Wu1EZVzvs/TQ7jzhzuzXXG2YDmesL+swmeg
         WIZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uP8cw5QpBNPd5JqWOMiFqaUS8EWJ44DDjB6xlGduAR0=;
        b=AVs93XlvF1hX3XiEH8sJGtljJwuPsYQWCmcRlP7ulzpz5Tz/Q2g0ZxAkj2/h/oUqKD
         yCs5OhCVGi6MAX76+OsAUzm4Fz8ktjt/4HlmhA2FPGrDK3VBz3PegIzgKbXtgbTlBriy
         SUihXl2d+bf0HCSeYYcDUOYssWnwF1jbk+xnuhsNHf5Kt+95BQ30x1/U+RzYNDpFpKpO
         H9GXv0uGGt5Fwew8/Ky0LG4pNzq70zDTORIKMsNpi8Iec5hnj49JsAIVNhTPOtJLfeXo
         JLN/9d3n3JbmEIvA1OzFY1NlxwH7kMWJeuAu4EhyzLUvyp7Tjiz9d9+zqKBsJUq/WzRl
         LW5Q==
X-Gm-Message-State: AOAM533UK48JNPDGIIaaaf1h8NgTIyrmJ8ZWnLjfIvm3np+LDqWEd/Rd
	9aVqbnIGxjKyXUQ05DaOlJk0PsAw2KKDcuIchwcCfpfYW3s3eEMH
X-Google-Smtp-Source: ABdhPJxQRjRL6oNPxdF+it+PZOq1BkStygq2GCO80Ib0KB6+bDqm6A2F1SaAiSOCH4WxusDl7Sv2qMA7LzXzYejWR2I=
X-Received: by 2002:a25:6a06:: with SMTP id f6mr9266323ybc.193.1644525422854;
 Thu, 10 Feb 2022 12:37:02 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSy-Z7yj=B-QRGuNf=uwop_1OFMH0ztpTasZ4BLQwoXKQQ@mail.gmail.com>
In-Reply-To: <CACDReSy-Z7yj=B-QRGuNf=uwop_1OFMH0ztpTasZ4BLQwoXKQQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 10 Feb 2022 14:36:47 -0600
Message-ID: <CAFche=gNSsj8bUKHgqPuo-4r6d7r33suu1-DaVPevrQGw8dS6w@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: 4PR6LDFHNPA2PDVPRGJTTJBMQ2RLX6GJ
X-Message-ID-Hash: 4PR6LDFHNPA2PDVPRGJTTJBMQ2RLX6GJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with a 4-port replay block on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4PR6LDFHNPA2PDVPRGJTTJBMQ2RLX6GJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7370762235616979217=="

--===============7370762235616979217==
Content-Type: multipart/alternative; boundary="000000000000a7552905d7afe9f2"

--000000000000a7552905d7afe9f2
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,

I think MEM_ADDR_W should be 31 for E320. Other than that everything looks
correct.

Wade

On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello,
>
> I am working on a USRP E320 unit using UHD 4.1.0.5.
> I have made an FPGA image containing a radio, a 4-port replay block and a
> NullSrcSink.
> After investigating (with a lot of help from Rob Kossler) why my own
> program doesn't work properly, per his suggestion I have tested
> rfnoc_replay_samples_from_file on the 4 ports of the replay block.
> Ports 0,1 work fine and the example is streaming my data. Ports 2,3 get
> stuck on record and don't work properly.
> Please find attached:
> * 4 console logs, one for each replay port.
> * My YML file with which I created the FPGA image.
> * Console log of uhd_usrp_probe.
>
> Some further notes that might help:
> * I also tried an original FPGA image of the E320 (with DUC, DDC and all
> the static mapping) with the only change being that the replay block has 4
> ports (and adding 2 more endpoints). The result was the same.
> * I also tried an FPGA image without the NullSrcSink. I added it sometime
> in the debug process and it was just left there. It has no bearing on the
> problem.
>
> I would appreciate any assistance to debug the issue and make all ports of
> the replay block work properly.
>
> Regards,
> Ofer Saferman
>
>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a7552905d7afe9f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ofer,</div><div><br></div><div>I think MEM_ADDR_W =
should be 31 for E320. Other than that everything looks correct.</div><div>=
<br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman=
 &lt;<a href=3D"mailto:ofer@navigicom.com">ofer@navigicom.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div>Hello,</div><div><br></div><div>I am working on a USRP E320 unit us=
ing UHD 4.1.0.5.<br></div><div>I have made an FPGA image containing a radio=
, a 4-port replay block and a NullSrcSink.</div><div>After investigating (w=
ith a lot of help from Rob Kossler) why my own program doesn&#39;t work pro=
perly, per his suggestion I have tested rfnoc_replay_samples_from_file on t=
he 4 ports of the replay block.</div><div>Ports 0,1 work fine and the examp=
le is streaming my data. Ports 2,3 get stuck on record and don&#39;t work p=
roperly.</div><div>Please find attached:</div><div>* 4 console logs, one fo=
r each replay port. <br></div><div>* My YML file with which I created the F=
PGA image.</div><div>* Console log of uhd_usrp_probe.</div><div></div><div>=
<br></div><div>Some further notes that might help:</div><div>* I also tried=
 an original FPGA image of the E320 (with DUC, DDC and all the static mappi=
ng) with the only change being that the replay block has 4 ports (and addin=
g 2 more endpoints). The result was the same.</div><div>* I also tried an F=
PGA image without the NullSrcSink. I added it sometime in the debug process=
 and it was just left there. It has no bearing on the problem.</div><div><b=
r></div><div>
<div>I would appreciate any assistance to debug the issue and make all port=
s of the replay block work properly.</div><div><br></div><div>Regards, <br>=
</div><div>Ofer Saferman</div><div><br></div>

</div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a7552905d7afe9f2--

--===============7370762235616979217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7370762235616979217==--
