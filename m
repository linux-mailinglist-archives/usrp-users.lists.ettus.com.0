Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8DEA76BF8
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 18:32:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA75938590D
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 12:32:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743438743; bh=SdKRv5fkgfMUdX9goPq6oRDrOfrayuq7j+jINUCyrMA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yEtkYEj7G9fohtdVTZGGeko+8lhZEbEs40uWW4AinHO6is5WRZv9auoVdasqZGDMA
	 ocJGSVDGwscp3tBb76mi1MpXqB9uhOW2oHzGzw4Ltc4V9JkUHEAo6oxyIPMuwid9T/
	 aeCOO550PfzWlD0GztZKhnPM9dZV6/QBfNgm8wLONXiNxaMrifTyKWWBZfhRv0dUDP
	 omIrstbaNGfHWqmnCIVexmGbMdliAt4DtAxIi4KFg9A8WhUzWA1CXovWtdayxnLDsf
	 VaTYrsT91WKbPmkNn9qWxgxgeIhrWhqNNtkZXL57I8uDIwU5TOazziN3UwYFrWiebq
	 hhPqJFOiQ5g5g==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id E3DB0384546
	for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 12:32:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jwldjdah";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7c56321b22cso437476585a.1
        for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 09:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743438729; x=1744043529; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QdsdF7aRjaKeVNUh8+jGOzPGbY6MRCan9UWPI3PMrZ4=;
        b=JwldjdahbOx2fFCeAXnBtbjXeVHOi4akOdBrm5aJnbxVc2RYuf2ldqQawuzu24Zhd9
         23v1vJ4etnjiVFbVYnrAB9Ga2Ggyvtmv9e2lVRjlsA2a6sbOhjNZDxqtoApUPY9qGxhI
         BSGhdoztn899860JGb9viZKBo/K1Vtd0GpxnoAnOt1i1yn0bsTaEBw0YLgRtf6efzs4f
         J4GmR4JiMeKidPu1N9w4BxZpGGWAHSb8xBVncLKxiiRDm408FIJfTZjl5kYEYWg7R01W
         YMpqZXAFj9r3Qw/RBN0IwBJ2bQ9FMHwqVGXAXe6YB+N83dIEWCYra24wQnFoWCPeV9q0
         R1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743438729; x=1744043529;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QdsdF7aRjaKeVNUh8+jGOzPGbY6MRCan9UWPI3PMrZ4=;
        b=CgR/AYSgiUQeM18rtjXTI/s1ys4AC63erSupivUg/wTBTBjJY4khOQ9Sv3sjd+AybH
         WjEyLFlGgt6MAarOYsfhE3myNhkSD+mRl/uqp58fkBmPSSrHn4Mdl1vZmBnA65oovTLv
         3kuDkJl0lrkXo7Vzu9IGqSyLcFnuV4l6DgR1aWA0BT0agqoUF60Vy7hvdmTmmOhL9wd/
         218f5nBKi5xgbYWmXOaOqIpJDXBNvVFffDkFOzrLfwu+u3PS2zg8gaG9j9MI+q/ivwg5
         SO5b9Ty+8RQU2txjAq/sfyHSOz00xIriQiJYIVtq1xx5apJY5Ia/vCpsfaat3/+P7gIn
         WFEg==
X-Gm-Message-State: AOJu0Yz2jxPjhDCIGQ3eDU9zcVY+lmWtAbb/BcostVuNMb4rnmxfj9Xh
	+6FSdMDBCew1JdyRuCRQ5xzv3+sWIABQcz7HEKUh50FPzSkX5SgBZonqfg==
X-Gm-Gg: ASbGncvtT2aHRW/zE/isH00Ki2Kcn5xfTei8mx/TPYWkXsVeDHrE7ZsmoMHJjWHu0AE
	bZGtENdTGdDf8qesJpeCOaM072/yLA8KzjYpbsTPRaYN3gWhe3Vh9QzR//vtxLSaFF7rCUPioKL
	aoshdfoQQGUVk6xH3dxErfw2Cr9fzdCS82tCz2kH2OVunsJ32OrWSNdQ4wrEmPs32vCbbxa61KL
	kMA9QeFA8pxZhH4shy1Oj9dl9ADoVnfOAs++Rt1MMWClBJHCkB6+ZRHKSVVgnE581/kR1mp1YRH
	XfgHdGQNYyjzJ13yUtDd7hx5oh6WhpF+KYCVMFEa+B5FFEzItxP1Y9I=
X-Google-Smtp-Source: AGHT+IH8aC+XjlLmPaAEIO6xOR3RvQW21MFG2K5OsvGtb2ywzrmb1Uxfbo560HuQ08Rt4eNhFQ5JSg==
X-Received: by 2002:a05:620a:430f:b0:7b6:d7be:2e4 with SMTP id af79cd13be357-7c5f9c20a62mr1937721885a.26.1743438729140;
        Mon, 31 Mar 2025 09:32:09 -0700 (PDT)
Received: from [192.168.2.170] ([76.67.104.188])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c5f76ac2fbsm516848585a.58.2025.03.31.09.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 09:32:08 -0700 (PDT)
Message-ID: <b0903e4d-d6df-4c87-ab79-efd573e2de14@gmail.com>
Date: Mon, 31 Mar 2025 12:31:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Gannet <mgannet@gmail.com>
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
 <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
 <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com>
 <1606018006.2100559.1743436319414@mail.yahoo.com>
 <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
 <CABL+oDbXX70ZK0hD=MgjH6BgWwBWN_B21j9Q3T8ZTOt43dOwzA@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABL+oDbXX70ZK0hD=MgjH6BgWwBWN_B21j9Q3T8ZTOt43dOwzA@mail.gmail.com>
Message-ID-Hash: ZF6HLAU2UR5MKFUPCGXD5XKSPKQAJYRE
X-Message-ID-Hash: ZF6HLAU2UR5MKFUPCGXD5XKSPKQAJYRE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Max Input RF Power in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZF6HLAU2UR5MKFUPCGXD5XKSPKQAJYRE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0161362238323697111=="

This is a multi-part message in MIME format.
--===============0161362238323697111==
Content-Type: multipart/alternative;
 boundary="------------E6RZCyb4e2wqvGYhnYdBMLh6"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E6RZCyb4e2wqvGYhnYdBMLh6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 31/03/2025 12:09, Mark Gannet wrote:
> Just to follow on. The BasicRx is +10 dBm. I've been using that as a=20
> max to the BasicRx for quite a while without issue. But the UBX-160=20
> knowledge base indicates -15 dBm. I'd assume if you're using the UBX=20
> that you'll be using the configurable on-board amplification (up to=20
> 31.5 dB).
>
> https://kb.ettus.com/UBX
>
The basic_RX has NO analog gain elements at all.=C2=A0 It's basically jus=
t a=20
transformer-coupling to the ADCs, so your limit is
 =C2=A0 the limit of the ADCs.


>
> On Mon, Mar 31, 2025, 8:59=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 31/03/2025 11:51, zhou via USRP-users wrote:
>>     Hi,
>>
>>     What is the max input signal power to RF ports in X310?=C2=A0 Ther=
e is
>>     a spec in the below link:
>>     https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_Sh=
eet_2024-01-23.pdf
>>     There are max output powers, but not input power.
>>     I am using UBX-160 daughterboard.
>>
>>     In https://kb.ettus.com/X300/X310_Getting_Started_Guides, it says
>>     that
>>     "Never apply more than -15 dBm of power into any RF input."
>>
>>     ChatGpt says that "*UBX 40*: *+10 dBm* (10 mW)"
>>
>>     What is the max input signal power?
>>
>>     Thanks for any comments,
>>
>>     Zhou
>>
>     -15dBm is somewhat conservative, but if that's what the
>     manufacturer recommends, I'd go with that, rather than a
>     =C2=A0 hallucination produced by ChatGPT.
>
>     The receivers on USRPs are generally designed to be connected to
>     an antenna, and as such have sensitive, lower-noise
>     =C2=A0 front-ends.=C2=A0 Such front-ends generally don't tolerate h=
igher
>     input powers without damage--and +10dBm *IS* high
>     =C2=A0 input power for a radio receiver.
>
>     One may have gotten used to the relatively-insensitive inputs of
>     laboratory spectrum analyzers, which often have
>     =C2=A0 inputs that can tolerate considerably-higher power levels, b=
ut
>     are insensitive at levels expected from direct
>     =C2=A0 connection to an antenna.=C2=A0 But USRPs are designed for a=
ntenna
>     connection.=C2=A0=C2=A0 If you want to use them as
>     =C2=A0 a laboratory spectrum analyser, you'll need to use attenuato=
rs.
>
>
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------E6RZCyb4e2wqvGYhnYdBMLh6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 31/03/2025 12:09, Mark Gannet wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABL+oDbXX70ZK0hD=3DMgjH6BgWwBWN_B21j9Q3T8ZTOt43dOwzA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div>Just to follow on. The BasicRx is +10 dBm. I've been using
          that as a max to the BasicRx for quite a while without issue.
          But the UBX-160 knowledge base indicates -15 dBm. I'd assume
          if you're using the UBX that you'll be using the configurable
          on-board amplification (up to 31.5 dB).</div>
        <div dir=3D"auto">
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto"><a href=3D"https://kb.ettus.com/UBX"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://kb.ettus.com/UBX</a></div>
          <br>
        </div>
      </div>
    </blockquote>
    The basic_RX has NO analog gain elements at all.=C2=A0 It's basically
    just a transformer-coupling to the ADCs, so your limit is<br>
    =C2=A0 the limit of the ADCs.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CABL+oDbXX70ZK0hD=3DMgjH6BgWwBWN_B21j9Q3T8ZTOt43dOwzA@mail.gm=
ail.com">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
          <div class=3D"gmail_quote gmail_quote_container" dir=3D"auto">
            <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 31, 2025,
              8:59=E2=80=AFAM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div>
                <div>On 31/03/2025 11:51, zhou via USRP-users wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div
style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:=
13px">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br>
                    </div>
                    <div dir=3D"ltr">What is the max input signal power t=
o
                      RF ports in X310?=C2=A0 There is a spec in the belo=
w
                      link:</div>
                    <div dir=3D"ltr"><a
href=3D"https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_S=
heet_2024-01-23.pdf"
                        rel=3D"nofollow noreferrer" target=3D"_blank"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://www.ettus=
.com/wp-content/uploads/2024/01/X300_X310_Spec_Sheet_2024-01-23.pdf</a></=
div>
                    <div dir=3D"ltr"><span><span
style=3D"color:rgb(0,0,0);font-family:Helvetica Neue,Helvetica,Arial,sans=
-serif">There
                          are max output powers, but not input power.</sp=
an></span><br>
                    </div>
                    <div dir=3D"ltr">I am using UBX-160 daughterboard.</d=
iv>
                    <div dir=3D"ltr"><br>
                    </div>
                    <div dir=3D"ltr">In=C2=A0<a
href=3D"https://kb.ettus.com/X300/X310_Getting_Started_Guides"
                        rel=3D"nofollow noreferrer" target=3D"_blank"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://kb.ettus.=
com/X300/X310_Getting_Started_Guides</a>,
                      it says that</div>
                    <div dir=3D"ltr">"<span><span
style=3D"color:rgb(0,0,0);font-family:Lucida Sans Unicode,Lucida Grande,s=
ans-serif;font-size:14px">Never
                          apply more than -15 dBm of power into any RF
                          input.</span></span>"</div>
                    <div><br>
                    </div>
                    <div dir=3D"ltr">ChatGpt says that "<strong>UBX 40</s=
trong>:
                      <strong>+10 dBm</strong> (10 mW)"</div>
                    <div dir=3D"ltr"><br>
                    </div>
                    <div dir=3D"ltr">What is the max input signal power?<=
/div>
                    <div dir=3D"ltr"><br>
                    </div>
                    <div dir=3D"ltr">Thanks for any comments,</div>
                    <div dir=3D"ltr"><br>
                    </div>
                    <div dir=3D"ltr">Zhou</div>
                    <div><br>
                    </div>
                  </div>
                </blockquote>
                -15dBm is somewhat conservative, but if that's what the
                manufacturer recommends, I'd go with that, rather than a<=
br>
                =C2=A0 hallucination produced by ChatGPT.<br>
                <br>
                The receivers on USRPs are generally designed to be
                connected to an antenna, and as such have sensitive,
                lower-noise<br>
                =C2=A0 front-ends.=C2=A0 Such front-ends generally don't =
tolerate
                higher input powers without damage--and +10dBm *IS* high<=
br>
                =C2=A0 input power for a radio receiver.<br>
                <br>
                One may have gotten used to the relatively-insensitive
                inputs of laboratory spectrum analyzers, which often
                have<br>
                =C2=A0 inputs that can tolerate considerably-higher power
                levels, but are insensitive at levels expected from
                direct<br>
                =C2=A0 connection to an antenna.=C2=A0 But USRPs are desi=
gned for
                antenna connection.=C2=A0=C2=A0 If you want to use them a=
s<br>
                =C2=A0 a laboratory spectrum analyser, you'll need to use
                attenuators.<br>
                <br>
                <br>
                <blockquote type=3D"cite">
                  <div
style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:=
13px">
                    <div><br>
                    </div>
                    <div dir=3D"ltr"><br>
                    </div>
                  </div>
                  <br>
                  <fieldset></fieldset>
                  <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" rel=3D"noreferrer"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" rel=3D"noreferrer"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users-leave@lists.ettus.com</a>
</pre>
                </blockquote>
                <br>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                rel=3D"noreferrer" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"t=
rue"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------E6RZCyb4e2wqvGYhnYdBMLh6--

--===============0161362238323697111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0161362238323697111==--
