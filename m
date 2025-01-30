Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCA6A23526
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 21:38:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7FF43861BE
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 15:38:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738269537; bh=MXRKxnR1P4mlyC6katpAvjAVYU/hegMGx8ePntlWQk0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JL2sn3IXV2jgh1rRC+GyAYVGuSase5D8AJzSF8CafMREA4Vf4zukeMU6tBVzGmnVn
	 irq6CXWvd8P+WdDqMIPzqK7nWgNKPyhbgoQf51JEJUeWFNRQ1q4kG2T8FB8cowW/c7
	 DKXbMM6wT6E0kIsWWBwljJLpqy03XjwYD5fxz0Bdd7BUXhjyuf1ZLlxvJ2UZ5OHxRy
	 9yjLGquaO5yuB6JvZZQfsF+HAb1a8gPODmIWYWaLpFHWmq0mtsiGbXZ3g6A/9m/4/s
	 t/3zQqe4nikykDro7r4k9zs4CPK0u13fsGc4riQ6hnkDEAqyTLKgsqQZSuw9AqaAbn
	 1H/dX6mi+LgtQ==
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by mm2.emwd.com (Postfix) with ESMTPS id C9E6938619F
	for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 15:38:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JtHHhPGt";
	dkim-atps=neutral
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2b1f7406e49so526643fac.3
        for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 12:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738269500; x=1738874300; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=08n4gANjXmv2MjUmFPaw74DJc6VtZzWXBMTAKLUAMrA=;
        b=JtHHhPGtchM2KQMEN12zOM8BEiJxm1bpmyh8wWsI2oR2YUJz3O7yZXbaejvIE3Ae1q
         IcUskpyuFmhQUFZ3TPn72mIjWAsGDZpTexg+TMKi9o0Y+rzvUtBy01J8iGs4o29VD48s
         9e3IYmZzB4ORB1d6YbPpmCfrF0Ew6VYFkSDw82Z3XTtEUi7rrVCEG+CEd0ldNf23DR56
         dQuT700qvSfYq++xCRtO9cSv+Q7tVk+3uBYFyDWNxALBzmfNN9P/QsNB5xKSZMiRJHbk
         y6Y/vAMUck2gM5rgnYU7Q0IcLiIsuHE+d2UGC2dSESvlODWee/uo6yfzdCPLxWiixrVi
         5ohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738269500; x=1738874300;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=08n4gANjXmv2MjUmFPaw74DJc6VtZzWXBMTAKLUAMrA=;
        b=WtWcbyVHyXY7rHcrg4H3Xomo8RbLOcwlw3go0A53+qCn62mZ+NgFXKpGQC/0Lhio9M
         ydrvHCx8VK8vPQBJHCb7Se6PwuLvdWDHGT47aQGhvXPdq0R18aEhvOdZPGoReW1ezTBL
         5VivAsqSdaPCvSgo53XuGbs9h5S/oSQsnSpGBBY0uFJ9HtmQ+TzEeBzHrOF5rSuJNxD7
         rNxgT35cweT5eG/FmtyNFp+o3J23Z0nvKPbi9Co/eBY2tIOfhdYyv3dMLyfeztbywp9U
         t06mezB0W6vlj5+NSBpef4uBhxOR+RWLbKlqZWEhBv4cGtKzuAJkH2FVX7jWoEoSoJ8T
         r+fw==
X-Gm-Message-State: AOJu0YzHTmxpCvDxp5RK+BpZnzXcKLZkkf610suPTPgQDaQhUoO3R1Uv
	D9M/P/eJUnysxEsvbo0xYfio6GsqRI88INbZetYbaBXMPgc7y+9c+vMG155U64Of6XlAx3/8hKY
	N7W3zKFK2NgzW7KjCodzFYTJ6e9w=
X-Gm-Gg: ASbGncvgHNQA1TghfzsVv4I09xQM8yNWcKpDU6F4O+cusIBmE+pYToaOU2k2KiBZy3r
	+iwpg82q333CWt2oD5mSdiDzHInR2EG5Xp0QUrinHmMSaEFru954UNkZb3gViutzc+XRct0MSGZ
	kdAIeVv7BRi2KWvrYkgUGXiKj5wG8/FAo=
X-Google-Smtp-Source: AGHT+IFdF4rK2q70p7+ZukHKnXWxQvv4f9pGYIwpOQANUhtA+g9+2iFE+P96O249S2OYMkGGZtJcl7N3g16T9CwBc2M=
X-Received: by 2002:a05:6871:4e8f:b0:29e:18cc:276f with SMTP id
 586e51a60fabf-2b32f13fdd8mr5235320fac.11.1738269500102; Thu, 30 Jan 2025
 12:38:20 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK7_wenz1X-D0+nGU+W6ewbErwopBbHpNTs1jBU0Gf-qUg@mail.gmail.com>
In-Reply-To: <CAEXYVK7_wenz1X-D0+nGU+W6ewbErwopBbHpNTs1jBU0Gf-qUg@mail.gmail.com>
From: David <vitishlsfan21@gmail.com>
Date: Thu, 30 Jan 2025 12:38:05 -0800
X-Gm-Features: AWEUYZm0miFIcUJCDdzmWeLPzOaLPTVJaQvvWDMkAwhJGaigoVwOZPJ46IE9tZA
Message-ID: <CAE=q3UOeKLv8ZN-6X8O0FV9B5Gha0_wkSb_TRA+OxQbrLM048g@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: PAWSK26GSUUCNEMBIMVMTWOFZB2SRI7V
X-Message-ID-Hash: PAWSK26GSUUCNEMBIMVMTWOFZB2SRI7V
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Updated rfnoc_modtool from v4.8.0.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PAWSK26GSUUCNEMBIMVMTWOFZB2SRI7V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7657198981351642118=="

--===============7657198981351642118==
Content-Type: multipart/alternative; boundary="00000000000013ded2062cf26801"

--00000000000013ded2062cf26801
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Brian,

I wrote an email about this a couple days ago. The rfnoc_modtool doesn=E2=
=80=99t
generate a yaml and a user can write one using the example at

uhd/host/examples/rfnoc-example/blocks/gain.yml

As a baseline. You may want to check that email for more info.

Thanks,

David

On Thu, Jan 30, 2025 at 12:33 Brian Padalino <bpadalino@gmail.com> wrote:

> I am trying to utilize the updated rfnoc_modtool in v4.8.0.0.
>
> I can create the basic directory structure with the `create` command, but
> when I try to `add` a block I get a "No such file or directory" error
> message.
>
> -- start commands --
> $ rfnoc_modtool create test
> $ cd rfnoc-test/
> $ rfnoc_modtool add simple
> Traceback (most recent call last):
>   File "/home/bpadalino/work/uhd/env/bin/rfnoc_modtool", line 24, in
> <module>
>     sys.exit(rfnoc_modtool.main(get_pkg_dir()))
>   File
> "/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_util=
s/rfnoc_modtool.py",
> line 125, in main
>     executor.run(cmd["steps"])
>   File
> "/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_util=
s/step_executor.py",
> line 72, in run
>     getattr(self, step_type)(**{k: self._resolve(v) for k, v in
> step_args.items()})
>   File
> "/home/bpadalino/work/uhd/env/lib/python3.10/site-packages/uhd/rfnoc_util=
s/step_executor.py",
> line 152, in parse_descriptor
>     with open(source, "r", encoding=3D"utf-8") as f:
> FileNotFoundError: [Errno 2] No such file or directory:
> 'rfnoc/blocks/simple.yml'
> -- end commands --
>
> Did I do it wrong?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000013ded2062cf26801
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Brian,</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">I wrote an email about this a couple days ago. The rfnoc_modtool does=
n=E2=80=99t generate a yaml and a user can write one using the example at=
=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">uhd/host/examples=
/rfnoc-example/blocks/gain.yml</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">As a baseline. You may want to check that email for more info.=C2=A0=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">David</div></div><div><div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 30, =
2025 at 12:33 Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" tar=
get=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;b=
order-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"=
><div dir=3D"ltr">I am trying to utilize the updated rfnoc_modtool in v4.8.=
0.0.<div><br></div><div>I can create=C2=A0the basic directory structure wit=
h the `create` command, but when I try to `add` a block I get a &quot;No su=
ch file or directory&quot; error message.</div><div><br></div><div>-- start=
 commands --</div><div>$ rfnoc_modtool create test<br>$ cd rfnoc-test/<br>$=
 rfnoc_modtool add simple<br>Traceback (most recent call last):<br>=C2=A0 F=
ile &quot;/home/bpadalino/work/uhd/env/bin/rfnoc_modtool&quot;, line 24, in=
 &lt;module&gt;<br>=C2=A0 =C2=A0 sys.exit(rfnoc_modtool.main(get_pkg_dir())=
)<br>=C2=A0 File &quot;/home/bpadalino/work/uhd/env/lib/python3.10/site-pac=
kages/uhd/rfnoc_utils/rfnoc_modtool.py&quot;, line 125, in main<br>=C2=A0 =
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</div>

--00000000000013ded2062cf26801--

--===============7657198981351642118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7657198981351642118==--
