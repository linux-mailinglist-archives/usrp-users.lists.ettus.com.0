Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 451DD6A66F9
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 05:35:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 246A03846C6
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 23:35:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677645346; bh=5y59PWl/hk2uXW2unHeRKrpD9wBGKtOD/VzMcqe4jCg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=p1fe0ili/lLr8sOu0ZTtryXJ0hiZY3WEQ3OqTwqsY695wggdqqVkhtBesiot6KUxW
	 1yKow3bI0ThOa+W0swYPRHRHyhrPv+amkK0ytyZFJUu94zytF7p/kHClOGUCicbB/3
	 A9ho7dLCg16O5gisAFIGk4XhsdXrg+wnCZUp1Orq32hMjnwLN4XxE8L45Yp92EscPR
	 NSjxXyEpo2pTW0cGJFWHAYa18Z+wrfXghYwArc1N+1wml7WlvHujblotuld1Uu0sk7
	 FA14U7NlcHDgFnRgIwJPRJn9imu6adcdzaLeglALbVR8yLfWvezgztbtBuo+L16AAn
	 1eB0oewWEw98g==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 385B23844AD
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 23:35:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.b="4UlxCiFp";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id cy6so48907757edb.5
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 20:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com; s=20210112; t=1677645308;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g/b078w65vBzWlqQAxXZ8xnJ6jhCsXNrFeblN9wYxEc=;
        b=4UlxCiFp0perIMVDqj0EMQ3Kxraoyh1Xflmv2u/vWo6b+Upv5bhEG3DjxklHC6HhcG
         ruQCnO3tQxJBV1wJSOHhYXKbwdZ2PKcc6w4zyoGUXZNWHsH8VKatcwCFoLoDs+v9Ty6q
         aFHpCeZS1btq38YjMBsPM4Qd9NI5Q3lGHFuZK5O+edLQy/GZxv238NnkLVj7PxWDhvOh
         DBYj+/1Xlk+AAT9L5mXdjdYpjVjDM5Or03491GGgzjmtQBb4GgQCyZ9vcjmnKL0w+CEa
         aKAFOwPQF7IjQ/oLXkQAO5Mb0Jpy5akN6yuNm7VkZFPTS/OV6Ndzhqc3lyUqJAa5c1hz
         JODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677645308;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/b078w65vBzWlqQAxXZ8xnJ6jhCsXNrFeblN9wYxEc=;
        b=rw3bGdEuSYjhfxlllZNeXBYTPy9yf/XLxDPqm2psPqpj7hkK7Txo4r+WvgfYpOSD+R
         0UYM+doBDfwxqyQR+wyxOHbtIB1nuk4Iy0jG1EkcGGTcv/WqGYj/3cX+Aha2M4WjPP38
         sUgbTSnUd3oYl1xBl71mWm2whU9vv5hTLfnFxlGPLkjtovS8ysm003TAB9Tobmk1vyxD
         IV/SkZjb8k/qMHQ8PRNHyHQ3JsgRs7azDxvC5U5W4+WGkMLz3MlJoMjmXHCpJYLUp2WT
         cbqS0QRTdkcIDDOZXjJL5bWr4srcx4lGVuH2xUVm7QcTv1WFwGr0H3vao7pp4j/jogel
         /mtw==
X-Gm-Message-State: AO0yUKU6Mgo1E6nWRenDLEjgiZaWZ+fSnE0pjaN09oAurAA5zsV/TDHF
	/gyDfx1O34piFwDLfsbv1f6dvvB/TvprvSb9mRtRbA==
X-Google-Smtp-Source: AK7set9RFyALHgJcRdhyOUKqU7n+SVvV31KFytnoPbED/iS/j9FGbBhB0AbND0vTJt3bHSFLG4f1rf5sl3fEhLaZejo=
X-Received: by 2002:a17:906:7c96:b0:878:561c:6665 with SMTP id
 w22-20020a1709067c9600b00878561c6665mr2543021ejo.0.1677645308073; Tue, 28 Feb
 2023 20:35:08 -0800 (PST)
MIME-Version: 1.0
References: <CAOcHjoJ0sZ5BSRcJF4eKDhgwd0gWi6C102g-B9ANt+wJy1d7RQ@mail.gmail.com>
 <CAOcHjoJy37o+bHcpAUWe9A_R_x1ygwX_cX7iCHAf2c0rjLLk7Q@mail.gmail.com> <f75fc6c8-a750-9ffa-a026-62899fbf85a6@gmail.com>
In-Reply-To: <f75fc6c8-a750-9ffa-a026-62899fbf85a6@gmail.com>
From: "AERMAN TUERXUN." <armantursun@g.ecc.u-tokyo.ac.jp>
Date: Wed, 1 Mar 2023 13:34:46 +0900
Message-ID: <CAOcHjoL3wDeoVGmssRvuwHNMfxqyR_YhrOSRyTKtuAwJSEx37g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Z5UZ26DOJYMZELJ6JJETGZD7XCEPDHIH
X-Message-ID-Hash: Z5UZ26DOJYMZELJ6JJETGZD7XCEPDHIH
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: No module named 'uhd'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5UZ26DOJYMZELJ6JJETGZD7XCEPDHIH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1823141453181919167=="

--===============1823141453181919167==
Content-Type: multipart/alternative; boundary="000000000000a5a99805f5cf3c91"

--000000000000a5a99805f5cf3c91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for your help.

I set it in the .bashrc file before.
I exported it and now it's working.

Best regards

On Wed, Mar 1, 2023 at 1:06=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 28/02/2023 23:01, AERMAN TUERXUN. wrote:
>
> I also checked the uhd installation logs.
> Why it couldn't find the uhd module?
>
> -- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd
> -- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/yaml_utils.py
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/__init__.py
> -- Up-to-date:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_ima=
ge_core.vh.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_ima=
ge_core.v.mako
> -- Up-to-date:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
onnect_io_ports.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/d=
evice_transport.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
trl_crossbar.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/d=
evice_io_ports.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
hdr_xb_sep_transport.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/r=
fnoc_block.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/d=
rive_unused_ports.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/s=
tatic_router.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/s=
tream_endpoints.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/s=
ep_xb_wires.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
onnect_clk_domains.v.mako
> -- Installing:
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py
>
> On Wed, Mar 1, 2023 at 11:52=E2=80=AFAM AERMAN TUERXUN. <
> armantursun@g.ecc.u-tokyo.ac.jp> wrote:
>
>> Hi USRP users,
>>
>> I am currently developing an OOT RFNoC module.
>> When I tried to build a custom image, it gave me errors as below.
>> I checked the python path, and it seems fine.
>> Is there anyone that has any idea of the reason for this?
>> I am using n310 with uhd v4.2.0.0.
>> (I checked with uhd4.0, and didn't encounter this problem).
>>
>> Thanks in advance.
>> Best regards.
>>
>> Traceback (most recent call last):
>>   File "/usr/local/bin/rfnoc_image_builder", line 29, in <module>
>>     from uhd.imgbuilder import image_builder
>> ModuleNotFoundError: No module named 'uhd'
>> make[3]: *** [icores/CMakeFiles/n310_rfnoc_image_core.dir/build.make:57:
>> icores/CMakeFiles/n310_rfnoc_image_core] Error 1
>> make[2]: *** [CMakeFiles/Makefile2:300:
>> icores/CMakeFiles/n310_rfnoc_image_core.dir/all] Error 2
>> make[1]: *** [CMakeFiles/Makefile2:307:
>> icores/CMakeFiles/n310_rfnoc_image_core.dir/rule] Error 2
>> make: *** [Makefile:203: n310_rfnoc_image_core] Error 2
>>
>>
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Maybe your ld.so.conf doesn't include /usr/local/lib, or you didn't "sudo
> ldconfig" after doing the install?
>
> What's in your PYTHONPATH?  Is that path actually *exported* or did you
> set it locally in your .bashrc (or equivalent).
>
> If you manually go into python and:
>
> import uhd
>
> What happens?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a5a99805f5cf3c91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>Thank you for you=
r help.</div><div><br></div><div>I set it in the .bashrc file before.<br></=
div><div>I exported it and now it&#39;s working.</div><div><br></div><div>B=
est regards</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Mar 1, 2023 at 1:06=E2=80=AFPM Marcus D. Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 28/02/2023 23:01, AERMAN TUERXUN.
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>I also checked the uhd installation logs.</div>
        <div>Why it couldn&#39;t find the uhd module?<br>
        </div>
        <div><br>
        </div>
        <div>-- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd<br>
          -- Up-to-date:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder<br>
          -- Installing:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/yaml_utils.=
py<br>
          -- Installing:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/__init__.py=
<br>
          -- Up-to-date:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates<b=
r>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_image=
_core.vh.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_image=
_core.v.mako<br>
          -- Up-to-date:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/m=
odules<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/con=
nect_io_ports.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/dev=
ice_transport.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/ctr=
l_crossbar.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/dev=
ice_io_ports.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/chd=
r_xb_sep_transport.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/rfn=
oc_block.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/dri=
ve_unused_ports.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/sta=
tic_router.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/str=
eam_endpoints.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/sep=
_xb_wires.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/con=
nect_clk_domains.v.mako<br>
          -- Installing:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_build=
er.py<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 1, 2023 at
          11:52=E2=80=AFAM AERMAN TUERXUN. &lt;<a href=3D"mailto:armantursu=
n@g.ecc.u-tokyo.ac.jp" target=3D"_blank">armantursun@g.ecc.u-tokyo.ac.jp</a=
>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>Hi USRP users,</div>
            <div><br>
            </div>
            <div>I am currently developing an OOT RFNoC module.</div>
            <div>When I tried to build a custom image, it gave me errors
              as below.</div>
            <div>I checked the python path, and it seems fine.</div>
            <div>Is there anyone that has any idea of the reason for
              this?<br>
            </div>
            <div>I am using n310 with uhd v4.2.0.0.</div>
            <div>(I checked with uhd4.0, and didn&#39;t encounter this
              problem).<br>
            </div>
            <div><br>
            </div>
            <div>Thanks in advance.</div>
            <div>Best regards.<br>
            </div>
            <div><br>
            </div>
            <div>Traceback (most recent call last):<br>
              =C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, l=
ine 29, in
              &lt;module&gt;<br>
              =C2=A0 =C2=A0 from uhd.imgbuilder import image_builder<br>
              ModuleNotFoundError: No module named &#39;uhd&#39;<br>
              make[3]: ***
              [icores/CMakeFiles/n310_rfnoc_image_core.dir/build.make:57:
              icores/CMakeFiles/n310_rfnoc_image_core] Error 1<br>
              make[2]: *** [CMakeFiles/Makefile2:300:
              icores/CMakeFiles/n310_rfnoc_image_core.dir/all] Error 2<br>
              make[1]: *** [CMakeFiles/Makefile2:307:
              icores/CMakeFiles/n310_rfnoc_image_core.dir/rule] Error 2<br>
              make: *** [Makefile:203: n310_rfnoc_image_core] Error 2</div>
            <div><br>
              <br>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Maybe your ld.so.conf doesn&#39;t include /usr/local/lib, or you didn&#=
39;t
    &quot;sudo ldconfig&quot; after doing the install?<br>
    <br>
    What&#39;s in your PYTHONPATH?=C2=A0 Is that path actually *exported* o=
r did
    you set it locally in your .bashrc (or equivalent).<br>
    <br>
    If you manually go into python and:<br>
    <br>
    import uhd<br>
    <br>
    What happens?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a5a99805f5cf3c91--

--===============1823141453181919167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1823141453181919167==--
