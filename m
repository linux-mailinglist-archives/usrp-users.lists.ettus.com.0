Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D49AEA23518
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 21:33:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9CEA1386257
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 15:33:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738269202; bh=nOON9RrnRDvlqHOPYD/BHY5ZviDYjrD3zUYkFz9lugQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=a72CTxmqeB2/3C9hgNzy2sZr+ZeSHLZJLkmkE52htRbS1Z/D8lcru1ml63pDiDz93
	 ZVZzK4PxdPZDWDdqUihgF9XJ7WwPlQ6lBRYD5AF6ng0lGeXTI/fVBTSIYUdPLV/BVq
	 u9ErcAqHWaBOPi7yP2FytLhqZMAsS2cAEAF36j2CO557vU0ev/EPRLGV4+2CUOiSvb
	 cIROq1Gj3Xp4Wp83n1vtK+dxvHodORO19yA+roGHWdmFxI3Sd83qpoW3kMcA73tLWz
	 Z5CAaXJ2MoOVpcP/BPsopjTsq7nxLjdoJY20QXRRNjuoeYDFjuh6YrmBV/FyNzfd5T
	 yJT+yODrUm1ng==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 0ED4D386119
	for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 15:32:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VVLxOLol";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aafc9d75f8bso292548966b.2
        for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 12:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738269156; x=1738873956; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TIJaF+qdtf0JCWgg7LS17n24vayS/bY3nAx/ep5b/GQ=;
        b=VVLxOLolRX8ieioDZ1uLHS/M8TMMzWdEkEzNZ8DcrHTWHhX/frXK/1RJL/8Lmn7bgZ
         yBIJ/y36rCpFe/w48p3g9xx1HnUk/rsnNeeYtqn9EZYCSQJ8hh9OjiCwWHQ4C29E1L6X
         +3xlWmEWDD5a6x3VoyM6eavK6HiTNjMpZ8vyi333QYEha3GA6GsYiCEynZ3HOPd+VBXu
         tS+WPpe01YV7QeqrTd8kp+yZdWNEQrFDCKgpsUoRdUv/gtHruLzCUHAsPOM66WYMxxdx
         RkplmZbNZqJRETfwq4I8HtHuq7FKrETrYBRBXjruTwlNXMNkKJzI7tC7BGGsgkOBl6kt
         +g+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738269156; x=1738873956;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TIJaF+qdtf0JCWgg7LS17n24vayS/bY3nAx/ep5b/GQ=;
        b=fG8nOMPET/xqzPDvRgi2lIvmHDlT86MLtqsmo40h9H6aiHlbCM/5IE6pSAO04CURoG
         2CzcDyJKsDoPogi6Wa01COMtpi+cTZI4oC2il4Dk/FtFmzdYYCnlo4SWaRFw1N7sNsuq
         S/TIuqYFXzj4Fm+vKFq7V+27M3pH88hJcTj4E0bOQvslVTw6XA5rjPQfloVHwDJbqDow
         fztomKh1IU870VpeWhT/O3qRICu2w3abvG40fwqYICVkapNKlpmkdAvbYyM0Qr/IJ2cZ
         rW6h72N5BV7zHe1rL+Q/eA1KjKeqNtWEcjMzz8YWHFUv1Rsq5tqR0nOgQtlh9a2yQCTq
         qBFw==
X-Gm-Message-State: AOJu0Yz1D8ZntH55GpN+mqXPRGfCTtPZ5Xqs8Of5o9sOfciMXYRoyqeA
	7rlxPF5kBIJCl0bAyowEfB42bfxk5YkoEZifWDxTqEdkSvbjNqj2vlgGOldN4kS4fSuwYwjaGBh
	eXZAGR9A8V7HW4o9in40j2KVN4f0LHo+w
X-Gm-Gg: ASbGncsZq+pVBkKZG2FLGDr5OcrUJ2uOz1a2xMVu/j7WZr+BL8FAgcwNJMmaRTYHUd8
	sxlaVW8H1HUOOlrbUmGvVb/5r+MBbhUOfx+piObcRwmT6Z2qIVXEy/acgDl/sB9tINYr7mgRW
X-Google-Smtp-Source: AGHT+IHyoDTpCpeDWXI6NqnB4cq2LVaCRU5Pruhc3pX8xB30HB+qnjiTLRPSeVJkNTbJ9HgLiwl9OPc31RD6EmaCev8=
X-Received: by 2002:a17:907:6d0b:b0:ab6:b8e2:ebf3 with SMTP id
 a640c23a62f3a-ab6cfda42c7mr954546066b.36.1738269156241; Thu, 30 Jan 2025
 12:32:36 -0800 (PST)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 30 Jan 2025 15:32:24 -0500
X-Gm-Features: AWEUYZkm49NeVaCtDDTwoCR0GOpSxZOA_IIdBmVbD7P8qRwFSgwsstb8RMAEmXc
Message-ID: <CAEXYVK7_wenz1X-D0+nGU+W6ewbErwopBbHpNTs1jBU0Gf-qUg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: CB5X5I2Z2GG7FP4JKW5WPPNQY4QF7SBS
X-Message-ID-Hash: CB5X5I2Z2GG7FP4JKW5WPPNQY4QF7SBS
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Updated rfnoc_modtool from v4.8.0.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CB5X5I2Z2GG7FP4JKW5WPPNQY4QF7SBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3836450452345205064=="

--===============3836450452345205064==
Content-Type: multipart/alternative; boundary="0000000000009500ed062cf25346"

--0000000000009500ed062cf25346
Content-Type: text/plain; charset="UTF-8"

I am trying to utilize the updated rfnoc_modtool in v4.8.0.0.

I can create the basic directory structure with the `create` command, but
when I try to `add` a block I get a "No such file or directory" error
message.

-- start commands --
$ rfnoc_modtool create test
$ cd rfnoc-test/
$ rfnoc_modtool add simple
Traceback (most recent call last):
  File "/home/bpadalino/work/uhd/env/bin/rfnoc_modtool", line 24, in
<module>
    sys.exit(rfnoc_modtool.main(get_pkg_dir()))
  File
"/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_utils/rfnoc_modtool.py",
line 125, in main
    executor.run(cmd["steps"])
  File
"/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_utils/step_executor.py",
line 72, in run
    getattr(self, step_type)(**{k: self._resolve(v) for k, v in
step_args.items()})
  File
"/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_utils/step_executor.py",
line 152, in parse_descriptor
    with open(source, "r", encoding="utf-8") as f:
FileNotFoundError: [Errno 2] No such file or directory:
'rfnoc/blocks/simple.yml'
-- end commands --

Did I do it wrong?

Thanks,
Brian

--0000000000009500ed062cf25346
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to utilize the updated rfnoc_modtool in v4.8.0=
.0.<div><br></div><div>I can create=C2=A0the basic directory structure with=
 the `create` command, but when I try to `add` a block I get a &quot;No suc=
h file or directory&quot; error message.</div><div><br></div><div>-- start =
commands --</div><div>$ rfnoc_modtool create test<br>$ cd rfnoc-test/<br>$ =
rfnoc_modtool add simple<br>Traceback (most recent call last):<br>=C2=A0 Fi=
le &quot;/home/bpadalino/work/uhd/env/bin/rfnoc_modtool&quot;, line 24, in =
&lt;module&gt;<br>=C2=A0 =C2=A0 sys.exit(rfnoc_modtool.main(get_pkg_dir()))=
<br>=C2=A0 File &quot;/home/bpadalino/work/uhd/env/lib/python3.10/site-pack=
ages/uhd/rfnoc_utils/rfnoc_modtool.py&quot;, line 125, in main<br>=C2=A0 =
=C2=A0 executor.run(cmd[&quot;steps&quot;])<br>=C2=A0 File &quot;/home/bpad=
alino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_utils/step_execut=
or.py&quot;, line 72, in run<br>=C2=A0 =C2=A0 getattr(self, step_type)(**{k=
: self._resolve(v) for k, v in step_args.items()})<br>=C2=A0 File &quot;/ho=
me/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_utils/step=
_executor.py&quot;, line 152, in parse_descriptor<br>=C2=A0 =C2=A0 with ope=
n(source, &quot;r&quot;, encoding=3D&quot;utf-8&quot;) as f:<br>FileNotFoun=
dError: [Errno 2] No such file or directory: &#39;rfnoc/blocks/simple.yml&#=
39;<br></div><div>-- end commands --</div><div><br></div><div>Did I do it w=
rong?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--0000000000009500ed062cf25346--

--===============3836450452345205064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3836450452345205064==--
