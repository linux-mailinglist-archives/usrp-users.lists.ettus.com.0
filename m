Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B273A3EC3B
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 06:36:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04931385D97
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 00:36:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740116189; bh=Mwwl4qxlsMLFEZAjJL2erzCay7Yo36lF1V8MJc7fOD0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=D8IgXmqVaAJvAkon+v5XXd1DL6fu4U5rqcK76mvP1sQKkxDv9Wetbh9/KqdChu+xn
	 AClIXaXHQPZMrnevgMRkxPtAARj7Z0SRUkGEtc2jyUnvya7ZRuetIIVsiV97jqPnjW
	 I9WPmnx5xv7yrFnf+NsnQ7nYe/NHYhgU9NRgcL+iCamzhEbtxYP2fr1ESU5hbaNaKi
	 yQSZ5SyALM5roQNMQ2FjyceX4mYZCP/MasH438/0UJ8lBDe6/qDuUftCh1zV1rO5Rk
	 r3ubJC9vsI3sxDRMxGnA/meor73gs6fLQD3Vp2UVPKZ35aym9dSqXkWKLWkC79m5Ur
	 f6SK3PvvERk7w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FF2D385D27
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 00:35:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740116140; bh=3mhcyFUQqi1NBOMc8l/jATUQKBLKMc0GzYxCelYIvLU=;
	h=Date:To:From:Subject:From;
	b=iTySHUIlqoyrMvGB1I4lehQkfWhpeQAgwNrodcdOZZpkMSQNswNF12F4pZOzNnn1x
	 guZ6annQP2CbHoUtvlqPDOrCKUqh8n7vI48WdZWGACcnLTHDvHNE1aeAEoujNeILpn
	 8vxOvy1pfrQ5EB1WSA+d1vhQE9DT5MX5Ppuy/M6l24sPKbNc3XVrucDkFShlZkD0nl
	 nl1xLUFx7NXvylZu+H9mYyIci9UCseArckPpb2aacI4VLYIufhqVj/27W9sFG07G8e
	 9jdCLOBdmUuxFc7LB1wf+uMxHn9WXUCjKIPfDBCbvDUOy/WulrRl41ptXMpRzUp6MK
	 L4lw5dDLcmHEA==
Date: Fri, 21 Feb 2025 05:35:40 +0000
To: usrp-users@lists.ettus.com
From: anjana.krishnan@technosci.com
Message-ID: <vBIl8so5zllTJTE6yftT2qIPSseJoZccMjlpodW34@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: R4OI7TLAWDHVJ2HDOYGS7JBTYSZIEMXY
X-Message-ID-Hash: R4OI7TLAWDHVJ2HDOYGS7JBTYSZIEMXY
X-MailFrom: anjana.krishnan@technosci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Build UHD image from GRC file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R4OI7TLAWDHVJ2HDOYGS7JBTYSZIEMXY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0612450207536822041=="

This is a multi-part message in MIME format.

--===============0612450207536822041==
Content-Type: multipart/alternative;
 boundary="b1_vBIl8so5zllTJTE6yftT2qIPSseJoZccMjlpodW34"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vBIl8so5zllTJTE6yftT2qIPSseJoZccMjlpodW34
Content-Type: text/plain; charset=us-ascii

Hi,

I have installed UHD v4.1, GNU Radio v3.10 and Vivado v2019.1 in Ubuntu22.04.

The rfnoc_image_builder was used to build the UHD image. While building the UHD image using the yaml file the process was successful, however building using the grc file I encounter the following error:

`[INF] Converting GNU Radio Companion file to image builder format`

`Traceback (most recent call last):`

`  File "/usr/local/bin/rfnoc_image_builder", line 222, in <module>`

`    sys.exit(main())`

`  File "/usr/local/bin/rfnoc_image_builder", line 199, in main`

`    config, source, device, image_core_name, target = image_config(args)`

`  File "/usr/local/bin/rfnoc_image_builder", line 128, in image_config`

`    config = image_builder.convert_to_image_config(config, args.grc_blocks)`

`  File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py", line 500, in convert_to_image_config`

`    seps = {item["name"]: item for item in grc["blocks"] if item["parameters"]["type"] == 'sep'}`

`  File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py", line 500, in <dictcomp>`

`    seps = {item["name"]: item for item in grc["blocks"] if item["parameters"]["type"] == 'sep'}`

`KeyError: 'type'`

The path directory of GRC block descriptions is set to /usr/local/share/gnuradio/grc/blocks. Is this path correct?

What could be the possible reasons for this error? How can it be resolved? Can you please help.

Thanks in advance.

--b1_vBIl8so5zllTJTE6yftT2qIPSseJoZccMjlpodW34
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I have installed UHD v4.1, GNU Radio v3.10 and Vivado v2019.1 =
in Ubuntu22.04.</p><p>The rfnoc_image_builder was used to build the UHD ima=
ge. While building the UHD image using the yaml file the process was succes=
sful, however building using the grc file I encounter the following error:<=
/p><p><code>[INF] Converting GNU Radio Companion file to image builder form=
at</code></p><p><code>Traceback (most recent call last):</code></p><p><code=
>  File "/usr/local/bin/rfnoc_image_builder", line 222, in &lt;module&gt;</=
code></p><p><code>    sys.exit(main())</code></p><p><code>  File "/usr/loca=
l/bin/rfnoc_image_builder", line 199, in main</code></p><p><code>    config=
, source, device, image_core_name, target =3D image_config(args)</code></p>=
<p><code>  File "/usr/local/bin/rfnoc_image_builder", line 128, in image_co=
nfig</code></p><p><code>    config =3D image_builder.convert_to_image_confi=
g(config, args.grc_blocks)</code></p><p><code>  File "/usr/local/lib/python=
3/dist-packages/uhd/imgbuilder/image_builder.py", line 500, in convert_to_i=
mage_config</code></p><p><code>    seps =3D {item["name"]: item for item in=
 grc["blocks"] if item["parameters"]["type"] =3D=3D 'sep'}</code></p><p><co=
de>  File "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builde=
r.py", line 500, in &lt;dictcomp&gt;</code></p><p><code>    seps =3D {item[=
"name"]: item for item in grc["blocks"] if item["parameters"]["type"] =3D=
=3D 'sep'}</code></p><p><code>KeyError: 'type'</code></p><p>The path direct=
ory of GRC block descriptions is set to /usr/local/share/gnuradio/grc/block=
s. Is this path correct?</p><p>What could be the possible reasons for this =
error? How can it be resolved? Can you please help.</p><p>Thanks in advance=
.</p>

--b1_vBIl8so5zllTJTE6yftT2qIPSseJoZccMjlpodW34--

--===============0612450207536822041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0612450207536822041==--
