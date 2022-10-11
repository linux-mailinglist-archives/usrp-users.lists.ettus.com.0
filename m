Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 766265FBB7C
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 21:46:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04D0438113E
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 15:46:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665517565; bh=TxfDpUaGLghKbbdXXydtCQ4fJktV4kgPFlxmJysOZqo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JU82luvFOShMAi/8YDGMlPVKXfTNa9PmO5kDweVG2Xi7Wm3T3VmjkhlV89rd7lNo2
	 Rx9N3v+UDNbbbS2TQuqVHib7zlzMmpfgo0YYL2TUMCDH3NSVGA2T9zKNe2xIfpu49x
	 cFMtOOzxgy7/cb2JMq9f0HW+SalQ+D6F0d5iQcOqF7eA6UHoSANOFns1uze/T+VKqc
	 73cv4eG5IUoup26wGJV5yA/Ic4ayEjXwpYhW4RdI11iBnD5aa6Cc089DwudlyCERpd
	 0pgl4trfNVGFocit73F/w40eesYwOiwyhpQvVt3lYsvMjAe66c9OrZRHm/ZkT1lK7s
	 JLNnhAq8qx6fw==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F1F6380D8E
	for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 15:45:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fd09npp0";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id de14so9629382qvb.5
        for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 12:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8IyLpUsXb/9zwFLwD2qJyXFYi4foZgVZflbHra0TOjw=;
        b=Fd09npp0qnKye1QvfXsFeo9qGMUN07osvFpWvnkUpsuyYqoIWneu63OrBKvdf053iy
         xx6/S52FWK7fJYda6L9WYG/l06WoGmO7hBG336OrzlSfSKVuCP42B0LLXHHfwoXmkovB
         r3rApMnIy5xuTzQrh3lMQVg8ZPH8smLaWMz8RgivrjKELeSPJJzDrXXt4I9GqO1yf7IA
         9YqAxYpuGfbysyeR8IV+9SjvjN6gVXPIoU4VKCZoliqwcWYr1n9Bo+KvOThl2EjUXywO
         kuN4g5h9VykQdnhY4gmhor9lndoQlvnVMCTLth4F4m8NcuQcmBKaC/0oTyJDMQcxxLV+
         9jfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8IyLpUsXb/9zwFLwD2qJyXFYi4foZgVZflbHra0TOjw=;
        b=khCpQuoDfBpdMvpACfYut9YTV9IKoVFy4tR9vk5DdRNC7aTig1klrJFRmozp/szi5Y
         varF8+kFHM+F1S6EVYew78Z/xpQokei0JrorTRYbttd74I2GGq/FHZpVjpUNaqkG9lok
         2PTj2RlHY+iVN9wIZP2I2ty3aK7VbPKyAR7A7KFFQ0PQN0c8Y4HHsSR3o85BA0vEMPpg
         6iCMtMVjaRx6xCCsCzomG1TAQXETT6etItZZgrifqOK2OherkVCvywsLkYoPIGpNfCkq
         f06WLoPJY9lSItg0G8T77ChkxGSPmJib5I7R2Qz+j01J9hA+U+mQ4hJGFKRDNLJbBvwD
         r9jA==
X-Gm-Message-State: ACrzQf0TfUvbr9W/WAcKMBEit2ExdmYX0NlByMgUXAN5wWqsLShfSD9z
	qJ2xoyTF5n16ObkHLntvn2GZ15919UM=
X-Google-Smtp-Source: AMsMyM5CKFZq/6QtP2P4rk45iBl1c1pL2wjt9uyuH7uhFfqlAS3zBoJInel2otxTJSE8I8NLI4tGCw==
X-Received: by 2002:a05:6214:4114:b0:4b1:c7b1:6fad with SMTP id kc20-20020a056214411400b004b1c7b16fadmr21111635qvb.76.1665517516391;
        Tue, 11 Oct 2022 12:45:16 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-09-174-93-2-50.dsl.bell.ca. [174.93.2.50])
        by smtp.googlemail.com with ESMTPSA id ew6-20020a05622a514600b0039c72bb51f3sm1703703qtb.86.2022.10.11.12.45.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 12:45:16 -0700 (PDT)
Message-ID: <c427adf4-441e-cacc-b4c9-e0dcb1f3ab6b@gmail.com>
Date: Tue, 11 Oct 2022 15:45:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <1567317201.188112.1665504920071@mail.yahoo.com>
 <1416319753.252891.1665516681592@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1416319753.252891.1665516681592@mail.yahoo.com>
Message-ID-Hash: ZJHNHOBLDES2FZAKARG66LKXZ4AK7L22
X-Message-ID-Hash: ZJHNHOBLDES2FZAKARG66LKXZ4AK7L22
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD and NUMA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZJHNHOBLDES2FZAKARG66LKXZ4AK7L22/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4460121478634801523=="

This is a multi-part message in MIME format.
--===============4460121478634801523==
Content-Type: multipart/alternative;
 boundary="------------0YVd0BZfNrnl9YqrWWM9E7oN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0YVd0BZfNrnl9YqrWWM9E7oN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-11 15:31, zhou via USRP-users wrote:
> Hello,
>
> I am using R730 server to drive multiple USRPs. In my application=20
> code, I assign different Tx/Rx threads to different NUMA nodes, but=20
> how can I make the underlying UHD to use the same NUMA nodes?
>
> Thanks,
> Hongwei
>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
UHD uses std::thread=C2=A0 for any thread-based task operations.=C2=A0 Se=
e:

uhd/host/lib/utils/tasks.cpp and uhd/host/lib/utils/thread.cpp

You'd have to modify the underlying library code, I think, to implement=20
CPU affinity.


--------------0YVd0BZfNrnl9YqrWWM9E7oN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-11 15:31, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1416319753.252891.1665516681592@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpeb0eb4d4yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hello,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I am using R730 server to
          drive multiple USRPs. In my application code, I assign
          different Tx/Rx threads to different NUMA nodes, but how can I
          make the underlying UHD to use the same NUMA nodes?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    UHD uses std::thread=C2=A0 for any thread-based task operations.=C2=A0=
 See:<br>
    <br>
    uhd/host/lib/utils/tasks.cpp and uhd/host/lib/utils/thread.cpp<br>
    <br>
    You'd have to modify the underlying library code, I think, to
    implement CPU affinity.<br>
    <br>
    <br>
  </body>
</html>

--------------0YVd0BZfNrnl9YqrWWM9E7oN--

--===============4460121478634801523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4460121478634801523==--
