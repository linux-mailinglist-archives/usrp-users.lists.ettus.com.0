Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01404577958
	for <lists+usrp-users@lfdr.de>; Mon, 18 Jul 2022 03:42:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DADAF3812EA
	for <lists+usrp-users@lfdr.de>; Sun, 17 Jul 2022 21:42:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658108551; bh=81LM819pN9RiqtZgY3eGSl6wyCGwZjTIca/R03gncug=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=g8fZ1J/FIFAGVxzngopss76PC2GNUvAFmsfyrWpV8xabDTOYooyOXguA+9Vk+brvR
	 QqUjQ/SBfDKftmpOQeycY5zxhcXhN5LPl7ZKTycqI0R4W5ogNWC1buw9SKzQqoWD5C
	 bkyK5aeQw41mMBjl+wgyLhtSWoFSGyqWXND5OxZALRACT2CDAdFOWGVe14FRxDveqV
	 CYk5Jd2+HPeMBoT62tM5/jW3xRAykLuCJCeV4886O3eozOLX1+XmmZaJ1ByaWBshRI
	 XNcSPZE62Kq50lt5Nb5Q55dq24+ZfOKFpNyMB8SQhdYI4h7ZegQ/5orSB/4neqBqIa
	 7VqnOhyey6VBw==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id DF624381286
	for <usrp-users@lists.ettus.com>; Sun, 17 Jul 2022 21:41:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gWiy+FEq";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id d17so7892790qvs.0
        for <usrp-users@lists.ettus.com>; Sun, 17 Jul 2022 18:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=6BUS6w+NbpPdkO9J5im+Kcr1E02HV4X94ezDgKMogVM=;
        b=gWiy+FEqC/NtEhE+Aat9+UZS0wxuSehjnOm2+1AI2RIBRSlt9DQ4Ds+Gskt6UkKiS4
         4wWP3g68dNEqgmkXySq0T5r+6Jt1mBEgBpnNOr7Pqp4cU90YWadtiOUWV/Eze8Ko74Y7
         0WKgYEmCKUU+ccrNTskIKfGgZQyo1QGF+6P67x/HIznqSUyn3mWT4SH865g09mHRWdbx
         aPyJ67RNzkkNhqUk2hIIfPyWj0ydIAPbxKGTecapKaemF9WyxfqXn1wr/2kwhk5cPrFG
         aodyXtvIFkzlufhcxP0NrCdmIlOmx281MknE8i9kpmbciFbfaNlOpb5omlAAflYLEf/I
         YAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=6BUS6w+NbpPdkO9J5im+Kcr1E02HV4X94ezDgKMogVM=;
        b=yapxRR/42oE0Ln1puNjdOPm3vBvks7twDDgn3pnGkG3cwlX7TsKBpdfvyT+VPQVMRE
         tlZFWuE+Eeffq/EfGf4hF4mn73+oAUm1gzOLgXqVUPkYYw2qqhXchbIRq9gSla/CDKzw
         EQ1XpYCxtCBhRgmb6p66bQKOiV9y2WLV4w5y1OW33tdYsNSChgWcSZzhYt30czKJlQg1
         oHocqFc5C/g6F180xQO8Mk3e0IuW9hJr0tq5tddXbWjU45ptOqWDDFbhBMKuCByTV9X6
         chAWge5EzfFWWoj3UIBj5sNzzL7OZaNMsxZMBV2FT6YUiZAWv7UJrUHbf1765/IrAQFH
         9ecQ==
X-Gm-Message-State: AJIora+14KSK5E5RpYoH6bKJgIJGvF0+Tk6MtMhW0VglFZZbRmiST3Kq
	JAWLAdA7d2/zwzOa9JTnvci4I9NOZLE=
X-Google-Smtp-Source: AGRyM1vxfyO9CO/e80kjY8Xgb62mhin/w+hTNs7x2SaKD/YGzn7e+b4tkbD2hg8BaH+V4sxSykIVHw==
X-Received: by 2002:a05:6214:2427:b0:473:39c5:870a with SMTP id gy7-20020a056214242700b0047339c5870amr19051310qvb.109.1658108490977;
        Sun, 17 Jul 2022 18:41:30 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id fy19-20020a05622a5a1300b002f936bae288sm1945164qtb.87.2022.07.17.18.41.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jul 2022 18:41:30 -0700 (PDT)
Message-ID: <f39374ad-cfd0-ae1f-32bf-3378f0837821@gmail.com>
Date: Sun, 17 Jul 2022 21:41:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CADrcXBRpjGjD7uK2x+tmaL_hxsJL5knQ-TEiZx9ZYbXHTU7XOg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CADrcXBRpjGjD7uK2x+tmaL_hxsJL5knQ-TEiZx9ZYbXHTU7XOg@mail.gmail.com>
Message-ID-Hash: MVRJKI7BIHGPEMR5J3VTJXEPWIIQHGTA
X-Message-ID-Hash: MVRJKI7BIHGPEMR5J3VTJXEPWIIQHGTA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Daisy Chain
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MVRJKI7BIHGPEMR5J3VTJXEPWIIQHGTA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3534099098168278704=="

This is a multi-part message in MIME format.
--===============3534099098168278704==
Content-Type: multipart/alternative;
 boundary="------------9NefjMX400X0g7H7wfSlPvbn"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9NefjMX400X0g7H7wfSlPvbn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-17 21:37, Ernest Fardin via USRP-users wrote:
> Hi,
>
> Am I able to daisy chain two X310s using the second 10 Gigabit=20
> Ethernet port with a 10 Gigabit Ethernet cable=20
> <https://www.ettus.com/all-products/10gige-dc/>? This would remove the=20
> requirement for an Ethernet switch.
>
> Thanks!
>
> Ernest
>
No.=C2=A0=C2=A0 "Being a 10Gbit ethernet switch" is kind of specialized, =
and=20
there's no implementation in the X310 FPGA.


--------------9NefjMX400X0g7H7wfSlPvbn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-17 21:37, Ernest Fardin via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADrcXBRpjGjD7uK2x+tmaL_hxsJL5knQ-TEiZx9ZYbXHTU7XOg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,=C2=A0
        <div><br>
        </div>
        <div>Am I able to daisy chain two X310s using the second 10
          Gigabit Ethernet port with a <a
            href=3D"https://www.ettus.com/all-products/10gige-dc/"
            moz-do-not-send=3D"true">10 Gigabit Ethernet cable</a>? This
          would remove the requirement for an Ethernet switch.</div>
        <div><br>
        </div>
        <div>Thanks!</div>
        <div><br>
        </div>
        <div>Ernest</div>
      </div>
      <br>
    </blockquote>
    No.=C2=A0=C2=A0 "Being a 10Gbit ethernet switch" is kind of specializ=
ed, and
    there's no implementation in the X310 FPGA.<br>
    <br>
    <br>
  </body>
</html>

--------------9NefjMX400X0g7H7wfSlPvbn--

--===============3534099098168278704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3534099098168278704==--
