Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AE51C9B40
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 21:39:41 +0200 (CEST)
Received: from [::1] (port=47354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWmMu-0005CB-77; Thu, 07 May 2020 15:39:40 -0400
Received: from mout.web.de ([217.72.192.78]:60253)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hex98@email.de>) id 1jWmMq-00051z-Co
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 15:39:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588880335;
 bh=cZ2yXk1srCKQmcsvn1FEglLKFNROFHsZceUL6MKDmM0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=LW4uz8Z8kYHxoqN0Wn4sPI9H50PDJKdCdYoZaXZC9We6I0yPaS8R8nZ+ewBTnHRys
 FfG5FaJRI2y9ebCr2Ls0QdtQ4aED5W5mjwAD55eSWAyH4GnHAHKbkkRwjDkkquBeYA
 0PdfHN2b8UQn/L8G4t02dk+iYQYmpXGb87h4elS8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.14] ([87.150.154.203]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MeBPe-1jlaS10o6Y-00Pxeo; Thu, 07
 May 2020 21:38:55 +0200
To: Brian Padalino <bpadalino@gmail.com>
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAGNhwTPdQpcTQZEGe916-EoXaWkTU3iztw-g=+Lccd6dCOhjyA@mail.gmail.com>
 <e17443be-6f0a-9c2a-a1a4-30f722ffb2e7@email.de>
 <CAEXYVK5SVxQH0KRHd1S+vOppUuEy01K0NL4g_s9NzwoXhTX=VQ@mail.gmail.com>
Message-ID: <3cba6dbe-b099-ef37-b796-e482befb715d@email.de>
Date: Thu, 7 May 2020 21:38:54 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAEXYVK5SVxQH0KRHd1S+vOppUuEy01K0NL4g_s9NzwoXhTX=VQ@mail.gmail.com>
X-Provags-ID: V03:K1:Frk4xqMzlpUTf3Rb9UVEtmapTqw8pUhsFs5n0jCNAcUpoOWBiHy
 H2vUYz16o2UuNzsolXpgZ7ITARXPu3Ac/I78HR5/kU2yKrPfzmSzk5VZBw78VdBAY+O2o2V
 2V43yfPeE2JZSVo/gdagoIqzAk7zFkxsxmBXKcEq7o0yZW6YBn8lAY1Vam+jN49wDfd/XoZ
 CsK18P1UPbaSzjZR1/9lg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kTluuzGLj9w=:89weuKfm7n+d6iPqgTihsi
 xwh68HzeT7tJU/s62Ajj4EHw0blPzZ5yZM3XQHvPSHB9LLOmqmjCJ01BL2LNmK7EKjnSzVrpu
 kLSqY+xDo4ow6pykvtVpFtWwOiPhq+yVwjGi7klnXaXj9HpTb6ZiCKJYDNQFh5RM7loFZD0kr
 9BZ0NtkZU4fG8bvmNOyPs3mQP3SZLs3H7cwZaDznciKwPgKXqhouKu/3FNQ+wm9l+fBtEhpXD
 Yzsg0zqekwcKM2O4K9cq993jslSgX7wUnyCOKGqGV7Gy9HaWVgdf7xPqlNxqWw5UTEp4BCZL4
 P0ErmRgx1PxFJPLkyejZww1gVrekLhIk0b7mCHh1MlcmNAXgE2ECngIU5GL881bC8fgjF0qw7
 f8Wq0f4etKzRjO3sajX3OBWOhJMoJ6Se7Z/TWKi9gdRf91fAK7Ig2/VMV2Ez1lxIJc0p2MYBQ
 uUJendWw7/pvuv+4nfpuew7yU6ZWsGM5zmXCkjiqQyqNFZKpBQ691N5ZjwEtXbu3X+4QOfhIw
 0DgSa8rAY4k4wV1DO2jCwtqqw69h980+iyFGu6Fs3RLieNIHSp+jbZ5xDK2m2AZktw1ZptC3K
 P0A3VnwRsUKwmWVdq6NancUu+TfQ3XNxsRbvZ+dv2CFdjfAjmLD3uix2ajauekcLEJl+6yVDw
 fjaauYGv0JKrYuDha6seWADiE/R0uhS7HfuJWVAP0XX3iMz+EwQ28vdGQ3HcdFtdw8bvOKNQP
 jH/Iz1SerMPzPt754zOB+NgsCfgQ9XqTetPewov6aIKcmnH1T0wkOxqOdrPMVcBnB494de8d9
 uaw6NXPBadGllLrZKX040ceJKwyDWSycfFvOfoDD2gM+yUHMkIG0kQpUHydbFma41q0nqeWHW
 AFCBzw6e1RAc+QRqhmw/88u+YhUllBoPlrgDO6fgZR0fy90Xmc2lcOLxPfQmsVT5jKWzRdJ7v
 Olj7Dq0+VQyYXwiFBZ0kYjPnYsEy2rk1daJR+mqygAP7E9ggZaY7PFZBdNnWe2LFAjFgjIBoE
 qQ+xLdQ9Mn4e/1b9gYNHL/FSyRu4dJfclTDIPh9TL8G0J18PHeqbUi6xLGTqlrJRtDjvCnEm3
 YbX7xcDej0eLgp2k3OEMgQQntvS/SYXALd30x0KLRN1h2tFguXlYz/za0iqwhX8JkTPKg8H4s
 7OsiEe1c3KS/2xZ/PxYkHuWvHRP4/dR8v1z2l2wsb8EfTnOUZ634fDSWxYCZsUuo/lDOyvOok
 j+F5d3OfptlMF5ApD
Subject: Re: [USRP-users] TX underflows when using multi_usrp vs. two
 independent tx_streamers
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Max via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Max <hex98@email.de>
Cc: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

My bad!
Of course you are right; there is a dual 10Gb option for the X300.

Max

> On Thu, May 7, 2020 at 2:58 PM Max via USRP-users
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Michael,
>
>     thank you for the feedback.
>     Unfortunately the X300 offers just one SFP+, so combining two links
>     should not be possible. I also don't think the network interface itself
>     is the bottleneck, considering two independent processes don't seem to
>     have a problem providing the data.
>
>
> You can use a dual 10Gbe FPGA image and get dual links on the X300.
>
> Brian

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
