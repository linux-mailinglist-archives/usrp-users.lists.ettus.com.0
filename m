Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 262A0621B3E
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 18:55:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDFDD3808C4
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 12:55:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667930112; bh=tn+Eayi2CJO6kXAG7haAGPUALdXUFoV5/doVbvjV4b8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IiKBFkOph/D4iTPfoR6VXqXoAeGdcoI13VZl10CWqsP6Wg8XdcpxzOb3ZLAUjQejV
	 R52IyNjp+EkxEe7Ce0dwHsNXl7uhDIMZqJadeIyr+R7n9AQsScC5j/QUujXzAiMOBm
	 4kGBzWPtw527W5tOSfrMO+NC/pcSkphAIOmur6I/5naVmc9QqmecigS3VH8+Bq8jEA
	 oZP+yiGMGfsvhb1IypYXxyup0nFtXB/POFxh6Bhc9vmYyGvhXYylOp95JQ4t0sarGd
	 /ovSum2wmoP/VDlfydec7HLgl4iANQzjOdojuJZekajTy1Y/tFRFjt/0bUL/9UPuD/
	 lS0xxko4Y6q1A==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D4843809A3
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 12:53:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TaoMk7vw";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id e15so10729487qvo.4
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 09:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1qT2rVe2bDKu/ARyw9YBaeeeIJnLL3XOu32utzqz2c=;
        b=TaoMk7vwdxq6bCoQinjSLkLM6l7L0EQ504XpID5BZYFA9kzLPfyr5vS6BdV/c5l4I7
         rOllrqMF1vJDNzQ2t/FbDW7EAU1/ny+/k3awey/oarU9ntHZ/xAYN0DKXeIUtdQUc/Wu
         8NOCXvxiwK0cO4RY0WM/sO9gr7fX0CEB2oSS3pPEBSuDcZpxhzD/vJIUg7bE0UT/0e5T
         L7YEuGXHAvxkv+rX9HyEMWQHg1QglCpShRz/Q7bng3vdSn8UePQCEvvUjjNVmx95i8+r
         SEin46EVLSMooXgi8nEpb3kTaoULQ0TR7ZtzBv+OtJs3RD6CbKLzgRWqhFXXWeIgk73L
         dOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q1qT2rVe2bDKu/ARyw9YBaeeeIJnLL3XOu32utzqz2c=;
        b=vPXQv6LqTVeFILQkrAJBQufYRc06WsxHQunj3ydNjGuKXJufCLsGwktRyN6VuGFGY7
         ao3RouI2E1dHCVzVjQZEGlkYzkJV9m4GKHLdvC5lKUscMXP9oiBNMkMpjzGq6yNke3kd
         uAIhdh2PBO0uxql/9x1XIf0NXr+/4tvjULAh3WKIoppbaICt5R8LVtvM6xao9gJxwIve
         mWkP5O6TU5yklP6LoEPdV/RsUbi7l9lUKrjK0z+hMeBQbiSYSPEk56pVmx6CR2aBsrSh
         TtAeNMCfIqEg3/o/xw7brbbqFg1j5ELV31+KGQn7ZjRgStyUhnWK5r/XraDMMpAc2Voo
         +1Sg==
X-Gm-Message-State: ACrzQf39VEDck1oynRbzGU+zI/P2kbSnJhqi4s8XdsmK9EqBshn56IuP
	/v7w5Zpv4g67ctl73U70rtQnMoFb5e8=
X-Google-Smtp-Source: AMsMyM76AVHNHejDiETQq+kJ13N8khWa8EL6CBDO77rBKS0DDXKKEkQXDT3PQfIS6YDC/zkMvjG6cw==
X-Received: by 2002:a0c:a909:0:b0:4b3:ffb2:f69e with SMTP id y9-20020a0ca909000000b004b3ffb2f69emr50526824qva.4.1667929997419;
        Tue, 08 Nov 2022 09:53:17 -0800 (PST)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id c26-20020ac8661a000000b003a4cda52c95sm8438353qtp.63.2022.11.08.09.53.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 09:53:16 -0800 (PST)
Message-ID: <949b350c-fcc9-f8b3-1369-c0a6ec118afb@gmail.com>
Date: Tue, 8 Nov 2022 12:53:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80@lists.ettus.com>
Message-ID-Hash: EDQANNEHDTQXNGR76YFY7N6UPKKVXTMV
X-Message-ID-Hash: EDQANNEHDTQXNGR76YFY7N6UPKKVXTMV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom FPGA image "version" register
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EDQANNEHDTQXNGR76YFY7N6UPKKVXTMV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7403343668759773798=="

This is a multi-part message in MIME format.
--===============7403343668759773798==
Content-Type: multipart/alternative;
 boundary="------------PSjZK0f3H2KTRp5wYexrhpvi"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PSjZK0f3H2KTRp5wYexrhpvi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/11/2022 12:47, ri28856@mit.edu wrote:
>
> I found the following line in uhd_usrp_probe that looks like it does=20
> what I=E2=80=99m looking for:
>
> |if (tree->exists(path / "fw_version")) {|
>
> |ss << "FW Version: " << tree->access<std::string>(path /=20
> "fw_version").get()|
>
> |<< std::endl;|
>
> |}|
>
> The next question is where does the firmware version get set? I did=20
> some poking around fpga/usrp3/top, but it=E2=80=99s not immediately obv=
ious.=20
> Is this set somewhere in the build scripts? I run the standard=20
> Makefile when I build my custom image. I would like to write something=20
> so I can definitely distinguish this FPGA is running my modified=20
> firmware.
>

Did:

find uhd -name "*.cpp" -exec grep -H fw_version '{}' ';'


Which yielded:

hd/host/utils/uhd_usrp_probe.cpp:=C2=A0=C2=A0=C2=A0 if (tree->exists(path=
 /=20
"fw_version")) {
uhd/host/utils/uhd_usrp_probe.cpp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ss << "FW Version: " <<=20
tree->access<std::string>(path / "fw_version").get()
uhd/host/lib/usrp/b100/b100_impl.cpp:=20
_tree->create<std::string>("/mboards/0/fw_version")
uhd/host/lib/usrp/usrp2/usrp2_impl.cpp:=20
_tree->create<std::string>(mb_path / "fw_version")
uhd/host/lib/usrp/usrp2/usrp2_impl.cpp:=20
.set(_mbc[mb].iface->get_fw_version_string());
uhd/host/lib/usrp/usrp2/usrp2_iface.cpp:=C2=A0=C2=A0=C2=A0 const std::str=
ing=20
get_fw_version_string(void) override
uhd/host/lib/usrp/x300/x300_impl.cpp: _tree->create<std::string>(mb_path=20
/ "fw_version")
uhd/host/lib/usrp/b200/b200_impl.cpp:=20
_tree->create<std::string>("/mboards/0/fw_version")
uhd/host/lib/usrp_clock/octoclock/octoclock_impl.cpp: _proto_ver =3D=20
_get_fw_version(oc);
uhd/host/lib/usrp_clock/octoclock/octoclock_impl.cpp:=20
_tree->create<std::string>(oc_path / "fw_version")
uhd/host/lib/usrp_clock/octoclock/octoclock_impl.cpp:uint32_t=20
octoclock_impl::_get_fw_version(const std::string& oc)


So, a little bit further into the weeds....



--------------PSjZK0f3H2KTRp5wYexrhpvi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/11/2022 12:47, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I found the following line in uhd_usrp_probe that looks like it
        does what I=E2=80=99m looking for:</p>
      <p><code>if (tree-&gt;exists(path / "fw_version")) {</code></p>
      <p><code> ss &lt;&lt; "FW Version: " &lt;&lt;
          tree-&gt;access&lt;std::string&gt;(path / "fw_version").get()</=
code></p>
      <p><code> &lt;&lt; std::endl;</code></p>
      <p><code> }</code></p>
      <p>The next question is where does the firmware version get set? I
        did some poking around fpga/usrp3/top, but it=E2=80=99s not immed=
iately
        obvious. Is this set somewhere in the build scripts? I run the
        standard Makefile when I build my custom image. I would like to
        write something so I can definitely distinguish this FPGA is
        running my modified firmware. </p>
    </blockquote>
    <br>
    Did:<br>
    <br>
    find uhd -name "*.cpp" -exec grep -H fw_version '{}' ';'<br>
    <br>
    <br>
    Which yielded:<br>
    <br>
    hd/host/utils/uhd_usrp_probe.cpp:=C2=A0=C2=A0=C2=A0 if (tree-&gt;exis=
ts(path /
    "fw_version")) {<br>
    uhd/host/utils/uhd_usrp_probe.cpp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 ss &lt;&lt; "FW Version: "
    &lt;&lt; tree-&gt;access&lt;std::string&gt;(path /
    "fw_version").get()<br>
    uhd/host/lib/usrp/b100/b100_impl.cpp:=C2=A0=C2=A0=C2=A0
    _tree-&gt;create&lt;std::string&gt;("/mboards/0/fw_version")<br>
    uhd/host/lib/usrp/usrp2/usrp2_impl.cpp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
    _tree-&gt;create&lt;std::string&gt;(mb_path / "fw_version")<br>
    uhd/host/lib/usrp/usrp2/usrp2_impl.cpp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
    .set(_mbc[mb].iface-&gt;get_fw_version_string());<br>
    uhd/host/lib/usrp/usrp2/usrp2_iface.cpp:=C2=A0=C2=A0=C2=A0 const std:=
:string
    get_fw_version_string(void) override<br>
    uhd/host/lib/usrp/x300/x300_impl.cpp:=C2=A0=C2=A0=C2=A0
    _tree-&gt;create&lt;std::string&gt;(mb_path / "fw_version")<br>
    uhd/host/lib/usrp/b200/b200_impl.cpp:=C2=A0=C2=A0=C2=A0
    _tree-&gt;create&lt;std::string&gt;("/mboards/0/fw_version")<br>
    uhd/host/lib/usrp_clock/octoclock/octoclock_impl.cpp:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
    _proto_ver =3D _get_fw_version(oc);<br>
    uhd/host/lib/usrp_clock/octoclock/octoclock_impl.cpp:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
    _tree-&gt;create&lt;std::string&gt;(oc_path / "fw_version")<br>
    uhd/host/lib/usrp_clock/octoclock/octoclock_impl.cpp:uint32_t
    octoclock_impl::_get_fw_version(const std::string&amp; oc)<br>
    <br>
    <br>
    So, a little bit further into the weeds....<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------PSjZK0f3H2KTRp5wYexrhpvi--

--===============7403343668759773798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7403343668759773798==--
