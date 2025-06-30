Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 117E9AED93D
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jun 2025 12:03:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06C36386249
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jun 2025 06:03:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751277785; bh=+e8v1UWJ1UcPL2g7OYWSfTN9wIM3y3QvbP3GZ4BpO3g=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XV0fkd/Bd+pjAqsBmvG8kj+P47CQfb+L/HUAoAhqgP+D78xQLV5Ic2u/aQBIevtME
	 UGzPADQgCO7ow05igsF1Ur6dr0Fs4aaAbkRfqgtGKKgHbSeE28OI/Iujkdrar4bCeU
	 s5VEgRlh7jbLzYV5vIxzfhjD911I1K0j/GjuRt5GvdYbOOVhX5efGFpvfc3Jv3O+6b
	 2OI8n4xiYsDqcJH9uQjBY/1J3w/vFxlFoLQc7G+0TIev7fH/4PpVWUww23hp6vaK3m
	 x75AvBXT1oWUQaHJLgSYXc3/BIx9IBa8nK+/LGyZ//m5RfaZy3qwXnSHJHEQYa/CfM
	 SPliNoJiFDkBw==
Received: from mail-yb1-f193.google.com (mail-yb1-f193.google.com [209.85.219.193])
	by mm2.emwd.com (Postfix) with ESMTPS id D8015385DBD
	for <usrp-users@lists.ettus.com>; Mon, 30 Jun 2025 06:02:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CV4j0w6p";
	dkim-atps=neutral
Received: by mail-yb1-f193.google.com with SMTP id 3f1490d57ef6-e7569ccf04cso1374826276.0
        for <usrp-users@lists.ettus.com>; Mon, 30 Jun 2025 03:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751277772; x=1751882572; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+vkkwxvofK736CD2D/6oxbBht9BsIBm0FkCV+EfHXeM=;
        b=CV4j0w6p4damOWFnjSNIdC5PxuHTya7ci0mQc5mXnB5dhCVzo/qXvDxp+T+1OgKkeZ
         ocV4sRAROurHQdqoRNBLhxJlIhg5i7QJildZx3JV7/Zr1ze5VqlaXaB++w7P0HrLhLh6
         QR+uSXrn8ZoazZxebK7kXOgVIplWGYC04sda+RaCjaW8hT92Lk2YW3J7WnUmOdIohtu3
         5gVXrKu0Oy5P2EyWtue6iyYBMTbuft+Z4T8YqntNz+aiJ+XNMjKAz/sus6+hARDMDXd0
         7Fd45a/meAsY+Nu2Ogvun9/4g3WmxbW5KTz/9xmI+M1Pn8TJNqNsQ9hcGek5i8bJSBaN
         MMLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751277772; x=1751882572;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+vkkwxvofK736CD2D/6oxbBht9BsIBm0FkCV+EfHXeM=;
        b=NYw/yJa4sw2NRO3LOoWYAWzZpzzWyifIWnyQqrABIoQ6RLN+ix4W4GgB6GmyoiDhNY
         fCbsOIATQjlj57EcQpkl3WnR+e8YROawxE8m/DxNPW6GJGXXzVDIfym7dORuV25zayF6
         YiAHL+qU1Fd7gVwUerinIC/ILMR7YsjLZUmCUMJDC4u2/sHaADxUVIKIVGuDgiF2VbiE
         EuICmFmza1LwVRKZgGDLd+KqeHTSrx9tAS68XOvm706z/GDU2ixGp4s/Gvb7iWn4XWCY
         KuLA1M30JafGNsjeuO1BHEmNBqFRKUS2skWJWHtUNogQ87miQRFIaNLvFG9wdDq7ByTb
         uoLA==
X-Gm-Message-State: AOJu0YzDnkACw9sVZIlg/EqumhFop1TJkzouQyoRAtO0xzDOD16uFLOK
	+8bOlGnFnqPISnt/ANgNMwgaXv/5t8dNUTbdxw1UsTUwsTZ/Pn7ImQGjU0Sw2NvXza3/X2xB4fB
	dAqRXi8MjAZM6Nm4lOhpWfBiMuTb2hVc6ma6jD88WwVy3GqlLeA==
X-Gm-Gg: ASbGncsoYs23WSmCH5DxGRR58HfQ/Wpjy1bP3ABIhDBKnpG6YUMO8J/FxKiSQrTcGbr
	ODum12ooyiA4WoMAcny9i+2j790OncYd5/YKDhumpI7SMZ1GSCS/D876PmKgni29nhyHggrL/qB
	F338t7chiht0KqBAPbjkVf4fFf0jmYlxHLZOM6267Ln6bz
X-Google-Smtp-Source: AGHT+IH1gj2YkJX1kPsvSy0mYz8o0HVur2GF8iRee5geyF6SQ9hqYxWYOfcVSiACG4+gnp9bWONUpbJj22/rVra7078=
X-Received: by 2002:a05:6902:154a:b0:e82:b74:504c with SMTP id
 3f1490d57ef6-e87a7b6b7famr15645523276.23.1751277771921; Mon, 30 Jun 2025
 03:02:51 -0700 (PDT)
MIME-Version: 1.0
From: Ahmet Hes <nirkicatal1@gmail.com>
Date: Mon, 30 Jun 2025 13:02:40 +0300
X-Gm-Features: Ac12FXzZ0MNDYxoLWFnEWNuinC0re-ag4hnjfo3LpxZ-QeVADKtULpyR3tIfgAc
Message-ID: <CAOj5YL5xQFTNW6Me_cbs-AGOJzs4FWUHuZTLDmh2fr4Q2LtTAw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PEYLB2BUEVZ2WOWSS4SZCAU47SJSRISM
X-Message-ID-Hash: PEYLB2BUEVZ2WOWSS4SZCAU47SJSRISM
X-MailFrom: nirkicatal1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Post new thread
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PEYLB2BUEVZ2WOWSS4SZCAU47SJSRISM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0263764476441202025=="

--===============0263764476441202025==
Content-Type: multipart/alternative; boundary="0000000000007f9c300638c721f0"

--0000000000007f9c300638c721f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have followed the exact same steps as shown in this video:
https://www.youtube.com/watch?v=3DM9ntwQie9vs to create a custom RFNoC Gain
block. I successfully built the FPGA bitstream and booted the E310 device
with it.

After flashing, I confirmed that the RFNoC blocks were correctly loaded.
The output is:
RFNoC blocks on this device:

  * 0/Gain#0
  * 0/Radio#0

Static connections on this device:

  * 0/SEP#0:0 =3D=3D> 0/Radio#0:0
  * 0/Radio#0:0 =3D=3D> 0/SEP#0:0
  * 0/SEP#1:0 =3D=3D> 0/Radio#0:1
  * 0/Radio#0:1 =3D=3D> 0/SEP#1:0
  * 0/SEP#2:0 =3D=3D> 0/Gain#0:0
  * 0/Gain#0:0 =3D=3D> 0/SEP#2:0

In addition to generating the bitstream, I also created and included the
required .yml files =E2=80=94 specifically the block descriptor (gain.yml) =
and
image core (e310_rfnoc_image_core.yml). I confirmed that the image builder
detects them successfully when using --log-level debug.

However, when I try to recreate the block diagram in GNU Radio Companion,
following the same structure as shown in the video, I encounter the
following error during Python code generation:

Generating: "/home/aufer/Projects/rfnoc-gain/rfnoc_gain_trial.py"
Generate Error: Undefined
>>> Failure
Traceback (most recent call last):
  File
"/home/aufer/gnuradio-install/lib/python3.12/site-packages/gnuradio/grc/gui=
/Application.py",
line 758, in _handle_action
    generator.write()
  File
"/home/aufer/gnuradio-install/lib/python3.12/site-packages/gnuradio/grc/cor=
e/generator/top_block.py",
line 86, in write
    for filename, data in self._build_python_code_from_template():
                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File
"/home/aufer/gnuradio-install/lib/python3.12/site-packages/gnuradio/grc/cor=
e/generator/top_block.py",
line 135, in _build_python_code_from_template
    connections=3Dself._connections(),
                ^^^^^^^^^^^^^^^^^^^
  File
"/home/aufer/gnuradio-install/lib/python3.12/site-packages/gnuradio/grc/cor=
e/generator/top_block.py",
line 328, in _connections
    code =3D template.render(
           ^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/mako/template.py", line 438, in
render
    return runtime._render(self, self.callable_, args, data)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/mako/runtime.py", line 874, in
_render
    _render_context(
  File "/usr/lib/python3/dist-packages/mako/runtime.py", line 916, in
_render_context
    _exec_template(inherit, lclcontext, args=3Dargs, kwargs=3Dkwargs)
  File "/usr/lib/python3/dist-packages/mako/runtime.py", line 943, in
_exec_template
    callable_(context, *args, **kwargs)
  File "memory:0x77b7681a8ce0", line 32, in render_body
  File "/usr/lib/python3/dist-packages/mako/runtime.py", line 230, in
__str__
    raise NameError("Undefined")
NameError: Undefined

This occurs when GRC attempts to generate the .py file.

Could you please advise what might be missing or misconfigured to cause
this =E2=80=9CUndefined=E2=80=9D error?

Best regards,

--0000000000007f9c300638c721f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hello,</p>
<p>I have followed the exact same steps as shown in this video: <a class=3D=
"gmail-" rel=3D"noopener" href=3D"https://www.youtube.com/watch?v=3DM9ntwQi=
e9vs">https://www.youtube.com/watch?v=3DM9ntwQie9vs</a> to create a custom =
RFNoC Gain block. I successfully built the FPGA bitstream and booted the E3=
10 device with it.</p>
<p>After flashing, I confirmed that the RFNoC blocks were correctly loaded.=
 The output is:<br>RFNoC blocks on this device:<br><br>=C2=A0 * 0/Gain#0<br=
>=C2=A0 * 0/Radio#0<br><br>Static connections on this device:<br><br>=C2=A0=
 * 0/SEP#0:0 =3D=3D&gt; 0/Radio#0:0<br>=C2=A0 * 0/Radio#0:0 =3D=3D&gt; 0/SE=
P#0:0<br>=C2=A0 * 0/SEP#1:0 =3D=3D&gt; 0/Radio#0:1<br>=C2=A0 * 0/Radio#0:1 =
=3D=3D&gt; 0/SEP#1:0<br>=C2=A0 * 0/SEP#2:0 =3D=3D&gt; 0/Gain#0:0<br>=C2=A0 =
* 0/Gain#0:0 =3D=3D&gt; 0/SEP#2:0<br><br></p><p>In addition to generating t=
he bitstream, I also created and included the required <code>.yml</code> fi=
les =E2=80=94 specifically the block descriptor (<code>gain.yml</code>) and=
 image core (<code>e310_rfnoc_image_core.yml</code>). I confirmed that the =
image builder detects them successfully when using <code>--log-level debug<=
/code>.</p>
<p>However, when I try to recreate the block diagram in GNU Radio Companion=
, following the same structure as shown in the video, I encounter the follo=
wing error during Python code generation:<br><br>Generating: &quot;/home/au=
fer/Projects/rfnoc-gain/rfnoc_gain_trial.py&quot;<br>Generate Error: Undefi=
ned<br>&gt;&gt;&gt; Failure<br>Traceback (most recent call last):<br>=C2=A0=
 File &quot;/home/aufer/gnuradio-install/lib/python3.12/site-packages/gnura=
dio/grc/gui/Application.py&quot;, line 758, in _handle_action<br>=C2=A0 =C2=
=A0 generator.write()<br>=C2=A0 File &quot;/home/aufer/gnuradio-install/lib=
/python3.12/site-packages/gnuradio/grc/core/generator/top_block.py&quot;, l=
ine 86, in write<br>=C2=A0 =C2=A0 for filename, data in self._build_python_=
code_from_template():<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=
^^^^^^<br>=C2=A0 File &quot;/home/aufer/gnuradio-install/lib/python3.12/sit=
e-packages/gnuradio/grc/core/generator/top_block.py&quot;, line 135, in _bu=
ild_python_code_from_template<br>=C2=A0 =C2=A0 connections=3Dself._connecti=
ons(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^^^^^^^^^=
^^^^^^^^^^<br>=C2=A0 File &quot;/home/aufer/gnuradio-install/lib/python3.12=
/site-packages/gnuradio/grc/core/generator/top_block.py&quot;, line 328, in=
 _connections<br>=C2=A0 =C2=A0 code =3D template.render(<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0^^^^^^^^^^^^^^^^<br>=C2=A0 File &quot;/usr/lib/p=
ython3/dist-packages/mako/template.py&quot;, line 438, in render<br>=C2=A0 =
=C2=A0 return runtime._render(self, self.callable_, args, data)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=
^^^^^^^^<br>=C2=A0 File &quot;/usr/lib/python3/dist-packages/mako/runtime.p=
y&quot;, line 874, in _render<br>=C2=A0 =C2=A0 _render_context(<br>=C2=A0 F=
ile &quot;/usr/lib/python3/dist-packages/mako/runtime.py&quot;, line 916, i=
n _render_context<br>=C2=A0 =C2=A0 _exec_template(inherit, lclcontext, args=
=3Dargs, kwargs=3Dkwargs)<br>=C2=A0 File &quot;/usr/lib/python3/dist-packag=
es/mako/runtime.py&quot;, line 943, in _exec_template<br>=C2=A0 =C2=A0 call=
able_(context, *args, **kwargs)<br>=C2=A0 File &quot;memory:0x77b7681a8ce0&=
quot;, line 32, in render_body<br>=C2=A0 File &quot;/usr/lib/python3/dist-p=
ackages/mako/runtime.py&quot;, line 230, in __str__<br>=C2=A0 =C2=A0 raise =
NameError(&quot;Undefined&quot;)<br>NameError: Undefined<br><br></p><p>This=
 occurs when GRC attempts to generate the <code>.py</code> file.</p>
<p>Could you please advise what might be missing or misconfigured to cause =
this =E2=80=9CUndefined=E2=80=9D error?</p>
<p>Best regards,</p><p><br></p><p><br></p><br></div>

--0000000000007f9c300638c721f0--

--===============0263764476441202025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0263764476441202025==--
