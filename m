Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E7B33F433
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 16:49:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D92003837E2
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 11:49:00 -0400 (EDT)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FF8838379E
	for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 11:47:57 -0400 (EDT)
Received: by mail-ej1-f45.google.com with SMTP id mj10so3382055ejb.5
        for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 08:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GGecvHavY/dab+yFBgPMLBwuTiiU9FFDJbC2+q5aa+0=;
        b=d4/4Giypk8fn2Z/8meDFrcsWwBwfw0oeEwq00XReLsHpnz87kg8UAc5ztzYn7CtJiO
         OTvt/zmWg0nv3Hw7JkG0Ifu7lg+LHxRn5ElUiOAtJPDV4HkD/u31Glo184VFhDVK84io
         YJv1Ugio6ajwbxokwCVJV4rizqGAyX3vAHYRXxW806D3OZELhVHaS4Exj8VmcEDZvAC9
         HbBXvzLH/HDeS/TtYGbJWQffWy0tNYCEV/F7cZswCZay0tpgcqXoql3Jw7IFYB/2VbiI
         OILYNdKVJRP0FSJKZl+dqYrhJrq/hHik/puYRlLofeRh27YGGztCNu4Wjg67cfPU/IJg
         D4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GGecvHavY/dab+yFBgPMLBwuTiiU9FFDJbC2+q5aa+0=;
        b=LxjHrRs9yv+FpndNmQLkctcOF6BraIe7ZcjJx8yxnHQylJUTo1nYoPG/TfncetlVzm
         L7KHM4n/HVUfHZ6wk9KqIt8YVAaPbaptgsUTfsx43xs53misvAmCgCYhvLwqi88Kw5Se
         8+ZmH5RfEKFi3MVBSZYXqK80dzsKvfHnnDccXbqis6OWhaE83FloFZ0JS7rNRWxtV/kV
         9TsmftQjnc+0/KTk8UvoyDLRseMA/Q5SHbxp6Gmux6CZCswhL83uYsHLJIG45S/0Jn/3
         ptJO7PcWjjaFSa4NPJTQxd6KGYYF5jUqqY3cgS5NP+56XQzgZ3QwGBzG8eEYWkOhgSkU
         4fYw==
X-Gm-Message-State: AOAM5327CeGt8idhM1vca+BMuGRuKgU54m/9y4cz7ffT/DDyZT0+tKmh
	9i76NVMbZt1RKU1izayflo9+qKASD7PenKSy/I2OGJi93kL5kQ==
X-Google-Smtp-Source: ABdhPJy3//IPGFB32WQ9E1JdxS+7tnYlHLhojU1a0dNq/rsqT4dvhut3Qm6TgzHeEwLgBFrOO1kPWDTAUXB9nU06QV8=
X-Received: by 2002:a17:906:1a16:: with SMTP id i22mr36338154ejf.522.1615996076624;
 Wed, 17 Mar 2021 08:47:56 -0700 (PDT)
MIME-Version: 1.0
From: Julian Casallas <jcasallas2019@gmail.com>
Date: Wed, 17 Mar 2021 11:47:45 -0400
Message-ID: <CAFBYX1W4Dw9axcLzP55a934Em3Zaj4ywXDc5F0GLJQ7kzQGgZQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: EOEMSAE4K5LKYCIWFG2P3LENGHKKY75B
X-Message-ID-Hash: EOEMSAE4K5LKYCIWFG2P3LENGHKKY75B
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_image_builder error.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EOEMSAE4K5LKYCIWFG2P3LENGHKKY75B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1837233547258587240=="

--===============1837233547258587240==
Content-Type: multipart/alternative; boundary="0000000000001b0bf805bdbd686e"

--0000000000001b0bf805bdbd686e
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am currently following the Getting started UHD 4 guide and when building
a fpga image running the following command:

* rfnoc_image_builder -F ~/uhd/fpga/ -I ~/rfnoc-ws/rfnoc-test/rfnoc/blocks
-y ~/rfnoc_ws/rfnoc-test/rfnoc/icores/demo_x310_rfnoc_image_core.yml -t
X310_XG*

I get the following error message:

...
[INF] Adding block description from fir_filter.yml
(/usr/local/share/uhd/rfnoc/blocks).
[INF] Adding block description from radio_1x64.yml
(/usr/local/share/uhd/rfnoc/blocks).
Traceback (most recent call last):
  File "/usr/local/bin/rfnoc_image_builder", line 212, in <module>
    sys.exit(main())
  File "/usr/local/bin/rfnoc_image_builder", line 195, in main
    image_builder.build_image(
  File
"/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
line 864, in build_image
    builder_conf = ImageBuilderConfig(config, blocks, device_conf)
  File
"/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
line 180, in __init__
    self._collect_noc_ports()
  File
"/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
line 217, in _collect_noc_ports
    desc = self.blocks[block["block_desc"]]
KeyError: 'demo.yml'

Basically what I did was to modify the *gain.yml *to be *demo.yml,*
the *gain_x310_rfnoc_image_core.yml
*to be  *demo_x310_rfnoc_image_core.yml, * I also modified both demo yaml
files with different name, noc_id, I changed the static connections to
reflect the demo0 device like this:

*  demo_x310_rfnoc_image_core.yml:*
...
  radio1:
    block_desc: 'radio_2x64.yml'
  demo0:
    block_desc: '*demo.ym*l'
...
 - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
  # Custom block connection: ep4 to demo0 and demo0 to ep4
  - { srcblk: ep4, srcport: out0, dstblk: *demo0*, dstport: in }
  - { srcblk: *demo0*, srcport: out, dstblk: ep4, dstport: in0 }
...
clk_domains:
    - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc0,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: duc0,   dstport: ce    }
    - { srcblk: _device_, srcport: radio, dstblk: radio1, dstport: radio }
    - { srcblk: _device_, srcport: ce,    dstblk: ddc1,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: duc1,   dstport: ce    }
    - { srcblk: _device_, srcport: ce,    dstblk: *demo0*, dstport: ce }

*demo.yml:*

 schema: rfnoc_modtool_args
  3 module_name: *demo*
  4 version: 1.0
  5 rfnoc_version: 1.0
  6 chdr_width: 64
  7 noc_id: *0x1000DE31*
  8 makefile_srcs: "/home/wisp/rfnoc_ws/rfnoc-test/rfnoc/fpga/rfnoc_block_
*demo/*Makefile.srcs"
  9
 10 clocks:
 11   - name: rfnoc_chdr
 12     freq: "[]"
 13   - name: rfnoc_ctrl
 14     freq: "[]"
 15   - name: ce
 16     freq: "[]"
 17
 18 control:
 19   sw_iface: nocscript
 20   fpga_iface: ctrlport
 21   interface_direction: slave
 22   fifo_depth: 32
 23   clk_domain: ce
 24   ctrlport:
 25     byte_mode: False
 26     timed: False
 27     has_status: False
 28
 29 data:
 30   fpga_iface: axis_data
 31   clk_domain: ce
 32   inputs:
 33     in:
 34       item_width: 32
 35       nipc: 1
 36       info_fifo_depth: 32
 37       payload_fifo_depth: 32
 38       format: int32
 39       mdata_sig: ~
 40   outputs:
 41     out:
 42       item_width: 32
 43       nipc: 1
 44       info_fifo_depth: 32
 45       payload_fifo_depth: 32
 46       format: int32
 47       mdata_sig: ~

Could you please help me to find the issue? I followed the UHD 4 guide and
started from scratch again to see I was missing something but I got the
same error.

Thanks
J

--0000000000001b0bf805bdbd686e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am currently following the Ge=
tting started UHD 4 guide and when building a fpga image running the follow=
ing=C2=A0command:</div><div><b><br></b></div><div><b>=C2=A0rfnoc_image_buil=
der -F ~/uhd/fpga/ -I ~/rfnoc-ws/rfnoc-test/rfnoc/blocks -y ~/rfnoc_ws/rfno=
c-test/rfnoc/icores/demo_x310_rfnoc_image_core.yml -t X310_XG</b><br></div>=
<div><b><br></b></div><div>I get the following=C2=A0error message:</div><di=
v><br></div><div>...</div><div>[INF] Adding block description from fir_filt=
er.yml (/usr/local/share/uhd/rfnoc/blocks).<br>[INF] Adding block descripti=
on from radio_1x64.yml (/usr/local/share/uhd/rfnoc/blocks).<br>Traceback (m=
ost recent call last):<br>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_buil=
der&quot;, line 212, in &lt;module&gt;<br>=C2=A0 =C2=A0 sys.exit(main())<br=
>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 195, in m=
ain<br>=C2=A0 =C2=A0 image_builder.build_image(<br>=C2=A0 File &quot;/usr/l=
ocal/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py&quot;, line =
864, in build_image<br>=C2=A0 =C2=A0 builder_conf =3D ImageBuilderConfig(co=
nfig, blocks, device_conf)<br>=C2=A0 File &quot;/usr/local/lib/python3/dist=
-packages/uhd/imgbuilder/image_builder.py&quot;, line 180, in __init__<br>=
=C2=A0 =C2=A0 self._collect_noc_ports()<br>=C2=A0 File &quot;/usr/local/lib=
/python3/dist-packages/uhd/imgbuilder/image_builder.py&quot;, line 217, in =
_collect_noc_ports<br>=C2=A0 =C2=A0 desc =3D self.blocks[block[&quot;block_=
desc&quot;]]<br>KeyError: &#39;demo.yml&#39;<br></div><div><br></div><div>B=
asically=C2=A0what I did was to modify the <b>gain.yml </b>to be <b>demo.ym=
l,</b>=C2=A0the=C2=A0<b>gain_x310_rfnoc_image_core.yml </b>to be=C2=A0 <b>d=
emo_x310_rfnoc_image_core.yml,=C2=A0</b>=C2=A0I also modified both demo yam=
l files with different name, noc_id, I changed the static connections to re=
flect the demo0 device like this:</div><div><br></div><div><b>=C2=A0 demo_x=
310_rfnoc_image_core.yml:</b>=C2=A0=C2=A0<br></div><div>...</div><div>=C2=
=A0 radio1:<br>=C2=A0 =C2=A0 block_desc: &#39;radio_2x64.yml&#39;<br>=C2=A0=
 demo0:<br>=C2=A0 =C2=A0 block_desc: &#39;<b>demo.ym</b>l&#39;<br>...</div>=
<div>=C2=A0- { srcblk: ddc1, =C2=A0 srcport: out_1, dstblk: ep3, =C2=A0 =C2=
=A0dstport: in0 =C2=A0}<br>=C2=A0 # Custom block connection: ep4 to demo0 a=
nd demo0 to ep4<br>=C2=A0 - { srcblk: ep4, srcport: out0, dstblk: <b>demo0<=
/b>, dstport: in }<br>=C2=A0 - { srcblk: <b>demo0</b>, srcport: out, dstblk=
: ep4, dstport: in0 }<br></div><div>...</div><div>clk_domains:<br>=C2=A0 =
=C2=A0 - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio=
 }<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstblk:=
 ddc0, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 - { srcblk: _devi=
ce_, srcport: ce, =C2=A0 =C2=A0dstblk: duc0, =C2=A0 dstport: ce =C2=A0 =C2=
=A0}<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radio, dstblk: radio1,=
 dstport: radio }<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =C2=
=A0 =C2=A0dstblk: ddc1, =C2=A0 dstport: ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 =
- { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0dstblk: duc1, =C2=A0 dstpor=
t: ce =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, =
=C2=A0 =C2=A0dstblk: <b>demo0</b>, dstport: ce }<br></div><div><br></div><d=
iv><b>demo.yml:</b></div><div><b><br></b></div><div>=C2=A0schema: rfnoc_mod=
tool_args<br>=C2=A0 3 module_name: <b>demo</b><br>=C2=A0 4 version: 1.0<br>=
=C2=A0 5 rfnoc_version: 1.0<br>=C2=A0 6 chdr_width: 64<br>=C2=A0 7 noc_id: =
<b>0x1000DE31</b><br>=C2=A0 8 makefile_srcs: &quot;/home/wisp/rfnoc_ws/rfno=
c-test/rfnoc/fpga/rfnoc_block_<b>demo/</b>Makefile.srcs&quot;<br>=C2=A0 9<b=
r>=C2=A010 clocks:<br>=C2=A011 =C2=A0 - name: rfnoc_chdr<br>=C2=A012 =C2=A0=
 =C2=A0 freq: &quot;[]&quot;<br>=C2=A013 =C2=A0 - name: rfnoc_ctrl<br>=C2=
=A014 =C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=C2=A015 =C2=A0 - name: ce<br>=
=C2=A016 =C2=A0 =C2=A0 freq: &quot;[]&quot;<br>=C2=A017<br>=C2=A018 control=
:<br>=C2=A019 =C2=A0 sw_iface: nocscript<br>=C2=A020 =C2=A0 fpga_iface: ctr=
lport<br>=C2=A021 =C2=A0 interface_direction: slave<br>=C2=A022 =C2=A0 fifo=
_depth: 32<br>=C2=A023 =C2=A0 clk_domain: ce<br>=C2=A024 =C2=A0 ctrlport:<b=
r>=C2=A025 =C2=A0 =C2=A0 byte_mode: False<br>=C2=A026 =C2=A0 =C2=A0 timed: =
False<br>=C2=A027 =C2=A0 =C2=A0 has_status: False<br>=C2=A028<br>=C2=A029 d=
ata:<br>=C2=A030 =C2=A0 fpga_iface: axis_data<br>=C2=A031 =C2=A0 clk_domain=
: ce<br>=C2=A032 =C2=A0 inputs:<br>=C2=A033 =C2=A0 =C2=A0 in:<br>=C2=A034 =
=C2=A0 =C2=A0 =C2=A0 item_width: 32<br>=C2=A035 =C2=A0 =C2=A0 =C2=A0 nipc: =
1<br>=C2=A036 =C2=A0 =C2=A0 =C2=A0 info_fifo_depth: 32<br>=C2=A037 =C2=A0 =
=C2=A0 =C2=A0 payload_fifo_depth: 32<br>=C2=A038 =C2=A0 =C2=A0 =C2=A0 forma=
t: int32<br>=C2=A039 =C2=A0 =C2=A0 =C2=A0 mdata_sig: ~<br>=C2=A040 =C2=A0 o=
utputs:<br>=C2=A041 =C2=A0 =C2=A0 out:<br>=C2=A042 =C2=A0 =C2=A0 =C2=A0 ite=
m_width: 32<br>=C2=A043 =C2=A0 =C2=A0 =C2=A0 nipc: 1<br>=C2=A044 =C2=A0 =C2=
=A0 =C2=A0 info_fifo_depth: 32<br>=C2=A045 =C2=A0 =C2=A0 =C2=A0 payload_fif=
o_depth: 32<br>=C2=A046 =C2=A0 =C2=A0 =C2=A0 format: int32<br>=C2=A047 =C2=
=A0 =C2=A0 =C2=A0 mdata_sig: ~<br></div><div><br></div><div>Could you pleas=
e help me to find the issue? I followed the UHD 4 guide and started from sc=
ratch again to see I was missing something but I got the same error.</div><=
div><br></div><div>Thanks</div><div>J</div></div>

--0000000000001b0bf805bdbd686e--

--===============1837233547258587240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1837233547258587240==--
