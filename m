Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E11D7E93B2
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 01:46:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 692EF384C51
	for <lists+usrp-users@lfdr.de>; Sun, 12 Nov 2023 19:46:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699836404; bh=OqyryaFUiX5Z2sB5vLiiclGMrahRCb1itpJlyJi2kao=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bjWcyiJ8QL7L3dDR6WRCaWQxThov0aiC5kIDWNDbq6umV0czC4WYzkl04yN7HIBeT
	 0AZTdrc2UZ5AmCngFud725TYgtn7wUiLenDW1kRJIEjSceeFJVHxXGxl4bNdxHTVEv
	 b/ZjGiEr+C7t7GhxlhvKi8SiVx1vMLK1tMyGcw56Oy7taevGPyeigIkO7SoHaxvLrC
	 4Jc1V0z6ZH8x4LoXOruHZuDhMgjhbhoBjT+IMdu3v/vB57E5qaVtId+UiofqzVFo02
	 fhKoEXVNAgMhGe3F7OZtNXz8UL2ibsgFB5O0iriPMdMOEkRPYwmkGx6UVyLMJZ5caa
	 Jfy7DNm7au9Wg==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A6793811FA
	for <usrp-users@lists.ettus.com>; Sun, 12 Nov 2023 19:45:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PkEVCF3H";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7789cb322deso251215285a.3
        for <usrp-users@lists.ettus.com>; Sun, 12 Nov 2023 16:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699836351; x=1700441151; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ol1R+DCeQTFMfw/gS3lYtZyNoZTnzfcIHAIy0dxTJ9M=;
        b=PkEVCF3Hzc/mEenvP3mhmSPOb+vrgzh2Ftd2MIQu3Q+vgjF50o9wxmvCSwnVjSY9CD
         H1M91WHQfrt1p4VMRrUQRpSClaFSwxUct1OPVQG94gOH07paFQCLqZ2CU6RIbpiFvLvq
         t6r+ymq+/bZuO/6MqoEUXcWmq0xR7q725BZx1NacUnUmeO0LTRrLTrWUXsuQ34vVVUdV
         AnNitAi+y7Sm69zhWgW3ip8l7qdibeI4Qo4AtzoJW72lYbvc6vB3ecdQj9yFvv0aWBPo
         Ps1VFPu7fU8Xxwx43iyiA5zyvbPT0BVlDbijPDAo/oL1W/ZfPyP0qv3RkeDq/N50+mSU
         MqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699836351; x=1700441151;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ol1R+DCeQTFMfw/gS3lYtZyNoZTnzfcIHAIy0dxTJ9M=;
        b=oPzXeJPe6k5g5kb1adjQ5ayxlEnepeGQBr8+Yqn+Wntz/kVt9mhYe5+bAUQxE+ixEw
         JOm90gV3dm0WLAMYUuszE26gY5PTvfBNokPKmBnWV0C/GAWzT5dmND2kbOOknjQXVYUU
         QJ1gtWHJPV++ryP5wwyKo4DuapLt3/1TIAsz4bijtj0XSJTWLMN2Rw2eq+ucKwR+AtMZ
         szql3YnNfDY/oNt5ld9o4XlZAln5wlsaqvDL8YgwMqiNIthIPE0/AN2NDZJ5shdEKtWU
         i3mpPeeC5I7gKgDbI3aOLESrp8/y069Mb5T1PW5bN37bvqt9aUBtQnaokO0YAgalxnNN
         eWTQ==
X-Gm-Message-State: AOJu0Yzd1a6354UtgTdBbDJhknqWCydIodqM346zGAtAyig8VUfDd6cz
	ieiWqwr/0S6pDfXVaHw0hGgf2EQQBX0=
X-Google-Smtp-Source: AGHT+IFkvOOYfphhVEOFMAXx5zq6LxXVs6RS3W16VVBDJBceuNgx9xu9FJgE50XwwDsRIAZ9LXnRtQ==
X-Received: by 2002:a05:620a:4095:b0:77a:4606:7541 with SMTP id f21-20020a05620a409500b0077a46067541mr5777652qko.56.1699836351296;
        Sun, 12 Nov 2023 16:45:51 -0800 (PST)
Received: from smtpclient.apple ([174.88.54.173])
        by smtp.gmail.com with ESMTPSA id o5-20020a05620a0d4500b007671678e325sm1494885qkl.88.2023.11.12.16.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Nov 2023 16:45:51 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Nov 2023 19:45:32 -0500
Message-Id: <61C14044-1800-45DF-901A-D2DF5A357295@gmail.com>
References: <CAJx0LdUiVUpiQhLCBSunf=K13F8pZjGAw57QHBWp_4RsKrSdBw@mail.gmail.com>
In-Reply-To: <CAJx0LdUiVUpiQhLCBSunf=K13F8pZjGAw57QHBWp_4RsKrSdBw@mail.gmail.com>
To: German Farinas <german.farinas@gmail.com>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: XI6ZR3M2EDVWG5SFZBJ4EXQ34W36HCRU
X-Message-ID-Hash: XI6ZR3M2EDVWG5SFZBJ4EXQ34W36HCRU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XI6ZR3M2EDVWG5SFZBJ4EXQ34W36HCRU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0302068093984248118=="


--===============0302068093984248118==
Content-Type: multipart/alternative; boundary=Apple-Mail-1DBD819D-4656-4AEF-9115-DB3002604B6A
Content-Transfer-Encoding: 7bit


--Apple-Mail-1DBD819D-4656-4AEF-9115-DB3002604B6A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I apologize for not getting back to you soo=
ner. I=E2=80=99m currently enjoying COVID and won=E2=80=99t really be online=
 for another couple of days.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPho=
ne</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 11, 2023, at 1=
0:45 AM, German Farinas &lt;german.farinas@gmail.com&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D=
"auto"><div>An update about this issue.<div dir=3D"auto"><br></div><div dir=3D=
"auto">I built from source 3.15 an still gave me the same error. I even crea=
ted a virtual machines with Ubuntu 18.04 and 16.04 and install the standard U=
HD package, which are older that 3.15 and still same error message. I am con=
fused. I think there is another kind of problem. With Ubuntu 18.04 (UHD 3.9 I=
 think) when I tried to upload images I just received a shorter error messag=
e:</div><div dir=3D"auto"><br></div><div dir=3D"auto"><blockquote><div dir=3D=
"auto"><div><div style=3D"min-width:150px" class=3D"elided-text"><blockquote=
 style=3D"min-width:150px;margin:0px 0px 0px 0.8ex;border-left:1px solid rgb=
(204,204,204);padding-left:1ex"><div dir=3D"auto"><blockquote><div dir=3D"lt=
r"><div dir=3D"auto"><div dir=3D"auto" style=3D"font-size:12.8px"><br>Error:=
 RuntimeError: Received invalid reply 32 from device.</div></div>___________=
________</div></blockquote></div></blockquote></div></div></div></blockquote=
></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Nov 9, 2023, 8:21 PM Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><u></u>

 =20

   =20
 =20
  <div>
    Those Rev numbers are hardware revs, but it may well also indicate
    that its on-board FPGA image is quite old--old enough that<br>
    &nbsp; modern image-loader tooling cannot cope, which is why a
    "hill-climbing" approach may be necessary.<br>
    <br>
    I'll note that Ubuntu packaged UHD 3.15 for 20.04 (Focal):<br>
    <br>
    <a href=3D"https://packages.ubuntu.com/search?suite=3Dfocal&amp;keywords=
=3Duhd" target=3D"_blank" rel=3D"noreferrer">https://packages.ubuntu.com/sea=
rch?suite=3Dfocal&amp;keywords=3Duhd</a><br>
    <br>
    So, if you can extricate yourself (temporarily) from the UHD 4.5
    that you likely installed through a PPA, the default<br>
    &nbsp; UHD package for Ubuntu 20.04 is what you want.<br>
    <br>
    <br>
    <div><br>
      <br>
      -------- Forwarded Message --------
      <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
        <tbody>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"" align=3D"RIGHT">Subject:
            </th>
            <td>Re: [USRP-users] The firmware build is not compatible
              with the host code build</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"" align=3D"RIGHT">Date: </th>
            <td>Thu, 9 Nov 2023 20:11:41 -0500</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"" align=3D"RIGHT">From: </th>
            <td>German Farinas <a href=3D"mailto:german.farinas@gmail.com" t=
arget=3D"_blank" rel=3D"noreferrer">&lt;german.farinas@gmail.com&gt;</a></td=
>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"" align=3D"RIGHT">To: </th>
            <td>Marcus D. Leech <a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank" rel=3D"noreferrer">&lt;patchvonbraun@gmail.com&gt;</a></td>=

          </tr>
        </tbody>
      </table>
      <br>
      speed<br>
      <div dir=3D"auto">
        <div>I have two N210s. One of the USRPs N210 is working fine
          with UHD 4.5, I suppose that one is rev4 although it doesn't
          say it explicitly at the back of the case. However, the other
          USRP N210 says explicitly rev2 at the back. This one is giving
          me the error.<br>
          <br>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">About the motivation for having UHD 4.5 none
            in specific. I am just new to UHD and I installed it via
            command line in Ubuntu 20. It was just easier. But in the
            future I may work with X300.</div>
          <br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9, 2023, 7:59
              PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">
              <div>
                <div>On 09/11/2023 19:24, German Farinas wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>I am using UHD 4.5, I may try 3.15 as you
                      suggested. But I don't know how to install both
                      together. My system is Ubuntu 20.04 LTS.
                      <div dir=3D"auto"><br>
                      </div>
                    </div>
                  </div>
                </blockquote>
                There haven't been any (documented) changes for N210
                since UHD 3.13.&nbsp; <br>
                <br>
                You may need to build 3.15 from source.&nbsp;&nbsp;&nbsp; I h=
aven't
                ever really managed two UHD on the same system at the
                same time.<br>
                &nbsp; Some folks like to use a different install prefix whe=
n
                building, and then set LD_LIBRARY_PATH and friends at
                runtime.<br>
                &nbsp; Some folks use docker containers.<br>
                <br>
                What is the motivation for using UHD 4.5?&nbsp; Unless you
                have hardware on the same system that is much newer, of
                course.<br>
                <br>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>
                      <div dir=3D"auto"><br>
                      </div>
                      <br>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9,=

                          2023, 7:08 PM Marcus D Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer noreferrer" target=3D=
"_blank">patchvonbraun@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                          <div dir=3D"auto">You may need to stage this
                            from a much earlier rev of UHD. I don=E2=80=99t
                            think there have been any updates to N210
                            firmware in a long time. So if you can
                            tolerate UHD 3.15 that might be better for
                            you.&nbsp;<br>
                            <br>
                            <div dir=3D"ltr">Sent from my iPhone</div>
                            <div dir=3D"ltr"><br>
                              <blockquote type=3D"cite">On Nov 9, 2023, at
                                7:05 PM, German Farinas &lt;<a href=3D"mailt=
o:german.farinas@gmail.com" rel=3D"noreferrer noreferrer noreferrer noreferr=
er" target=3D"_blank">german.farinas@gmail.com</a>&gt;
                                wrote:<br>
                                <br>
                              </blockquote>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">=EF=BB=BF
                                <div dir=3D"auto">
                                  <div style=3D"font-size:12.8px" dir=3D"aut=
o">I am trying to upload the
                                    image to an usrp N210 rev2.0 but I
                                    got the following error message.
                                    Have anyone had the same error
                                    before? I need some help with this
                                    issue. See the output of the
                                    uhd_image_loader below.</div>
                                  <div style=3D"font-size:12.8px" dir=3D"aut=
o"><br>
                                  </div>
                                  <div style=3D"font-size:12.8px" dir=3D"aut=
o">Best,</div>
                                  <div style=3D"font-size:12.8px" dir=3D"aut=
o">German</div>
                                  <div style=3D"font-size:12.8px" dir=3D"aut=
o"><br>
                                  </div>
                                  <div style=3D"font-size:12.8px" dir=3D"aut=
o">uhd_image_loader
                                    --args=3D"type=3Dusrp2,addr=3D192.168.10=
.2"</div>
                                  <div style=3D"font-size:12.8px" dir=3D"aut=
o"><br>
                                    [INFO] [UHD] linux; GNU C++ version
                                    9.4.0; Boost_107100;
                                    UHD_4.5.0.0-0ubuntu1~focal1<br>
                                    [ERROR] [UHD] Exception caught in
                                    safe-call.<br>
                                    &nbsp; in ~usrp2_iface_impl<br>
                                    &nbsp; at
                                    /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/u=
srp/usrp2/usrp2_iface.cpp:82<br>
                                    this-&gt;lock_device(false); -&gt;
                                    RuntimeError:<br>
                                    Please update the firmware and FPGA
                                    images for your device.<br>
                                    See the application notes for
                                    USRP2/N-Series for instructions.<br>
                                    Expected protocol compatibility
                                    number [10 to 12], but got 9:<br>
                                    The firmware build is not compatible
                                    with the host code build.<br>
                                    Please run:<br>
                                    <br>
&nbsp;"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"<br>
                                    &nbsp;"/lib/bin/uhd_image_loader" \<br>
                                    &nbsp; &nbsp;
                                    --args=3D"type=3Dusrp2,addr=3D192.168.10=
.2"<br>
                                    <br>
                                    Error: RuntimeError: Received
                                    invalid reply 32 from device.</div>
                                </div>
                                <span>______________________________________=
_________</span><br>
                                <span>USRP-users mailing list -- <a href=3D"=
mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer n=
oreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a></span><br>
                                <span>To unsubscribe send an email to <a hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"noreferrer noreferrer n=
oreferrer noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>=
</span><br>
                              </div>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </div>
                </blockquote>
                <br>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </div>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.co=
m</a><br>
</blockquote></div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-1DBD819D-4656-4AEF-9115-DB3002604B6A--

--===============0302068093984248118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0302068093984248118==--
